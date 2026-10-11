# Михаил Третьяков

Backend / Fullstack-разработчик. Специализируюсь на **Go, TypeScript и Node.js**, разрабатываю надежные серверные сервисы, агентные системы и высокопроизводительные веб-приложения. Открыт к предложениям о работе.

---

## Ключевые проекты

- **[better-axi](https://github.com/GitHubFoxy/better-axi)** — сверхбыстрый универсальный агентный браузерный движок на Node.js и Python.
  - **Задача:** объединить токено-эффективное дерево доступности AXI, автономный цикл навигации Jev и параллельный сбор данных Crawl4AI в единый модульный рантайм для AI-агентов.
  - **Что сделано:** реализовал суб-15ms извлечение активного DOM через CDP WebSocket без перезагрузки страниц, модульный CLI с примитивами `nav`, `extract active/batch`, `classify`, безопасную изоляцию профилей и автоматическую санитизацию секретов.
  - **Результат:** 100% универсальный инструмент для автономного взаимодействия с динамическими SPA (hh.ru, маркетплейсы), экономящий до 95% токенов контекста LLM.

- **[Secretary](https://github.com/GitHubFoxy/secretary)** — персональный ассистент и оркестратор на Go с распределенной архитектурой.
  - **Задача:** создать отказоустойчивую систему фонового выполнения задач с постоянным контекстом и делегированием воркерам.
  - **Что сделано:** разработал демон `secretaryd` с пулом горутин и каналами, локальное хранилище на SQLite, протоколы WebSocket, MCP и ACP, CLI-утилиту `secretaryctl` и веб-клиент на Svelte.
  - **Результат:** готовый к развертыванию сервис для автоматизации рутины и управления внешними воркерами.

- **[Pi Observational Memory](https://github.com/GitHubFoxy/pi-observational-memory)** ([npm](https://www.npmjs.com/package/pi-extension-observational-memory)) — open-source расширение долговременной памяти для coding-агента Pi.
  - **Задача:** решить проблему переполнения контекстного окна LLM в длительных сессиях разработки без потери важных фактов.
  - **Что сделано:** реализовал двухпороговую систему компактизации (observer/reflector), сохранение ключевых изменений кода, буферизацию хвоста сообщений и CLI-команды на TypeScript.
  - **Результат:** опубликованный в npm пакет с 17★ на GitHub и около 1 000 скачиваний за всё время с момента релиза.

- **[Климат22](https://github.com/GitHubFoxy/Klimat22)** ([Публичная витрина и демо](https://githubfoxy.github.io/Klimat22/)) — интернет-магазин климатического оборудования (коммерческая разработка, 7 месяцев).
  - **Задача:** разработать под ключ каталог, систему заказов и панель администрирования для торговой компании.
  - **Что сделано:** реализовал архитектуру на TypeScript, React, Next.js и Convex; внедрил фильтрацию, корзину, серверную валидацию, ролевой доступ и кабинет менеджера; настроил развертывание на VPS с Caddy и PM2.
  - **Результат:** завершенный рабочий интернет-магазин с витриной, фотоотчетом и видеодемонстрацией.

- **[Evercode backend](https://github.com/GitHubFoxy/evercode-fast-track-test-backend)** — REST API для отслеживания курсов криптовалют на Node.js, Express 5 и TypeScript.
  - **Задача:** реализовать надежный сервис агрегации котировок с валидацией, кэшированием и документацией.
  - **Что сделано:** спроектировал архитектуру с чистым разделением слоев, работу с SQLite через raw SQL, фоновый сбор данных из CoinMarketCap API, юнит- и интеграционные тесты на Jest/Supertest, спецификацию OpenAPI/Swagger и контейнеризацию в Docker Compose.
  - **Результат:** полностью протестированное REST API с автодокументацией и быстрым запуском в одну команду.

---

## Стек технологий

- **Языки:** Go, TypeScript, JavaScript, Python, SQL
- **Backend:** Go (горутины, каналы, net/http), Node.js, Express, REST API, WebSocket, SQLite, CDP / Crawl4AI
- **Frontend:** React, Next.js, Svelte, Tailwind CSS
- **Инфраструктура и инструменты:** Docker, Linux, Caddy, PM2, Git, Convex, MCP, OpenAPI/Swagger

---

## Контакты

- **Telegram:** [@beruseruko](https://t.me/beruseruko)
- **Email:** [tretyakovmikhailjob@gmail.com](mailto:tretyakovmikhailjob@gmail.com) · [michael.tretyakov.work@proton.me](mailto:michael.tretyakov.work@proton.me)
- **Twitter / X:** [@mishacoding](https://x.com/mishacoding)
- **Блог:** [astro-blog-indol-five.vercel.app](https://astro-blog-indol-five.vercel.app)
