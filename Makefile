.PHONY: setup dev build preview clean

# Configurar o ambiente (instalar dependências)
setup:
	yarn install

# Executar o servidor de desenvolvimento
dev:
	NODE_NO_WARNINGS=1 yarn dev

# Construir a documentação
build:
	yarn build

# Visualizar a documentação construída
preview:
	yarn preview

# Limpar node_modules e yarn.lock para uma instalação limpa
clean:
	rm -rf node_modules
	rm -f yarn.lock

# Mostrar ajuda
help:
	@echo "Comandos disponíveis:"
	@echo "  make setup   - Instalar dependências do projeto"
	@echo "  make dev     - Executar servidor de desenvolvimento"
	@echo "  make build   - Construir a documentação"
	@echo "  make preview - Visualizar documentação construída"
	@echo "  make clean   - Limpar node_modules e yarn.lock"
	@echo "  make help    - Mostrar esta ajuda" 