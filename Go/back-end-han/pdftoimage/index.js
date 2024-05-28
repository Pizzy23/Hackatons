const fs = require("fs");
const path = require("path");
const { PDFDocument } = require("pdf-lib");
const pdf2img = require("pdf-poppler");

const uploadDir = path.join(__dirname, "../uploads");
const outputDir = path.join(__dirname, "../output");

if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

fs.readdir(uploadDir, (err, files) => {
  if (err) {
    console.error("Erro ao ler o diretório de upload:", err);
    return;
  }

  files.forEach((file) => {
    const pdfFile = path.join(uploadDir, file);

    if (path.extname(file).toLowerCase() === ".pdf") {
      convertPDF(pdfFile);
    }
  });
});

async function convertPDF(pdfFile) {
  const pdfBuffer = fs.readFileSync(pdfFile);
  const pdfDoc = await PDFDocument.load(pdfBuffer);
  const totalDePaginas = pdfDoc.getPageCount();
  const pdfName = path.basename(pdfFile, ".pdf");

  const pdfOutputDir = path.join(outputDir, pdfName);
  if (!fs.existsSync(pdfOutputDir)) {
    fs.mkdirSync(pdfOutputDir, { recursive: true });
  }

  for (let pageNum = 1; pageNum <= totalDePaginas; pageNum++) {
    const opts = {
      format: "jpeg",
      out_dir: pdfOutputDir,
      out_prefix: `page_${pageNum}`,
      page: pageNum,
    };

    pdf2img.convert(pdfFile, opts, (err, res) => {
      if (err) {
        console.error(
          `Erro ao converter a página ${pageNum} do PDF em imagem`,
          err
        );
      } else {
        console.log(`Conversão bem-sucedida da página ${pageNum}`, res);
        console.log(`Imagem convertida: ${res}`);
      }
    });
  }
}
