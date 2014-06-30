
ALL : OnTruthSystems.epub OnTruthSystems.mobi OnTruthSystems.pdf

OnTruthSystems.epub: 
	rm -f OnTruthSystems.epub
	zip -X0 OnTruthSystems.epub mimetype
	zip -Xur9D OnTruthSystems.epub META-INF/* OEBPS/*

OnTruthSystems.mobi: OnTruthSystems.epub
	rm -f OnTruthSystems.mobi
	ebook-convert OnTruthSystems.epub OnTruthSystems.mobi

OnTruthSystems.pdf: OnTruthSystems.epub
	rm -f OnTruthSystems.pdf
	ebook-convert OnTruthSystems.epub OnTruthSystems.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

