class AiMultiReview < Formula
  desc "Multi-LLM parallel code review CLI"
  homepage "https://github.com/3062-in-zamud/ai-multi-review"
  url "https://github.com/3062-in-zamud/ai-multi-review/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "064503b50317e3baa8fd9d84a3039c34c0a461c30b0184ba57b7557710ba01c0"
  license "MIT"

  depends_on "jq"
  depends_on "python3"

  def install
    bin.install "bin/ai-multi-review"
    bin.install "bin/ai-multi-review-eval"
    prefix.install "lib", "reviewers", "prompts"
  end

  test do
    system "#{bin}/ai-multi-review", "--version"
  end
end
