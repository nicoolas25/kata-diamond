RSpec.describe Diamond do
  describe ".print_diamond" do
    subject(:print_diamond) { ->(letter) { described_class.print_diamond(letter) } }

    it "works for A" do
      expect { print_diamond["A"] }.to output(<<~EXPECTED).to_stdout
        A
      EXPECTED
    end

    it "works for B" do
      expect { print_diamond["B"] }.to output(<<~EXPECTED).to_stdout
        -A-
        B-B
        -A-
      EXPECTED
    end

    it "works for C" do
      expect { print_diamond["C"] }.to output(<<~EXPECTED).to_stdout
        --A--
        -B-B-
        C---C
        -B-B-
        --A--
      EXPECTED
    end

    it "works for D" do
      expect { print_diamond["D"] }.to output(<<~EXPECTED).to_stdout
        ---A---
        --B-B--
        -C---C-
        D-----D
        -C---C-
        --B-B--
        ---A---
      EXPECTED
    end

  end
end
