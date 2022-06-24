
resource "vercel_project" "gunjs_practice" {
  name            = "gunjs-practice"
  framework       = "vite"
  build_command   = "yarn build"
  install_command = "yarn"
  git_repository = {
    type = "github"
    repo = "bunhojun/gunjs-practice"
  }
}
