# Day 1 | Task 1
## Task Details
1. Clone the Strapi repository from:
	👉 https://github.com/strapi/strapi
2. Run Strapi locally.
3. Explore the project folder structure.
4. Start the Admin Panel.
5. Create a sample content type.
6. Push your setup to your GitHub repository.
7. Document all the steps in a README.md file and you have to make a loom video.
8. Wait for GitHub repository access (will be provided for respective teams).
9. At the end of the day, post your work update in your respective team channel, including:
	- Pull Request link
	- Loom video link
## Steps of Completing the Task
1. Create project directory.
	```sh
 	mkdir project-dir
	```
2. Clone Strapi GitHub repository.
	```sh
 	git clone https://github.com/strapi/strapi.git
 	```
3. Install Node.js and `npx`
	- Go to https://nodejs.org/en/download/
	- Select the appropriate options from the dropdown.
	- Run the corresponding script.
	- Finally, run the commands below to verify installation of Node.js, `npm` and `npx`
		```sh
		node -v
		npm -v
		npx -v
		```
4. Run the command to install Strapi and create a sample project.
	- Run the command below to install Strapi
		```sh
		npx create strapi@latest
		```
	- Enter the appropriate details like _project name_, _default database_, _TypeScript usage_, _git initialisation_, etc. when prompted.
5. Run the project using `npm`.
	```sh
 	npm run develop
 	```
6. Login to the Strapi admin panel and complete intial setup.
	> The address **`http://localhost:1337/admin`** should be shown after the command in the previous step finishes executing. Open the link in a web browser to see the admin panel.

## References
1. [Strapi repository](https://github.com/strapi/strapi.git)
2. [Strapi Quick Start guide](https://youtu.be/h9vETeRiulY?si=2CDqHLOi4U8eR9O0)
3. [Strapi Documentation](https://docs.strapi.io/)
