
# Convert PDF to PNG with white background
# Usage: make pdf2png PDF=path/to/file.pdf
pdf2png:
	@if [ -z "$(PDF)" ]; then \
		echo "Error: Please specify the PDF file using PDF=path/to/file.pdf"; \
		exit 1; \
	fi
	@if [ ! -f "$(PDF)" ]; then \
		echo "Error: File $(PDF) not found"; \
		exit 1; \
	fi
	@echo "Converting $(PDF) to PNG..."
	@convert -density 300 -background white -alpha remove -alpha off "$(PDF)" "images/$(PDF:.pdf=.png)"
	@echo "Conversion complete: $(PDF:.pdf=.png)"
