class AiMultiReview < Formula
  desc "Multi-LLM parallel code review CLI"
  homepage "https://github.com/3062-in-zamud/ai-multi-review"
  url "https://github.com/3062-in-zamud/ai-multi-review/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "PLACEHOLDER"  # v0.2.0 タグ作成後に更新
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
