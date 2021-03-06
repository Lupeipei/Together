require 'rails_helper'

describe Event do
  context "is invalid" do
    it "without a title" do
      event = build(:event, title: nil)
      event.valid?
      expect(event.errors[:title]).to include("不能为空字符")
    end
    it "without a logo" do
      event = build(:event, logo: nil)
      event.valid?
      expect(event.errors[:logo]).to include("不能为空字符")
    end
    it "without a status" do
      event = build(:event, status: nil)
      event.valid?
      expect(event.errors[:status]).to include("不能为空字符")
    end
    it "without a description" do
      event = build(:event, description: nil)
      event.valid?
      expect(event.errors[:description]).to include("不能为空字符")
    end
    it "without a start_time" do
      event = build(:event, start_time: nil)
      event.valid?
      expect(event.errors[:start_time]).to include("不能为空字符")
    end
    it "without a end_time" do
      event = build(:event, end_time: nil)
      event.valid?
      expect(event.errors[:end_time]).to include("不能为空字符")
    end
    it "without a category" do
      event = build(:event, category_id: nil)
      event.valid?
      expect(event.errors[:category_id]).to include("不能为空字符")
    end
    it "without a city" do
      event = build(:event, city: nil)
      event.valid?
      expect(event.errors[:city]).to include("不能为空字符")
    end
    it "without a province" do
      event = build(:event, province: nil)
      event.valid?
      expect(event.errors[:province]).to include("不能为空字符")
    end
    it "without a address" do
      event = build(:event, address: nil)
      event.valid?
      expect(event.errors[:address]).to include("不能为空字符")
    end
    it "without a sponsor" do
      event = build(:event, sponsor: nil)
      event.valid?
      expect(event.errors[:sponsor]).to include("不能为空字符")
    end
    it "without a limited_num" do
      event = build(:event, limited_num: nil)
      event.valid?
      expect(event.errors[:limited_num]).to include("不能为空字符")
    end
    it "if start_time is bigger than end time" do
      event = build(:event, start_time: 10.days.from_now, end_time: 9.days.from_now)
      event.valid?
      expect(event.errors[:end_time]).to include("结束时间不得小于开始时间")
    end
  end
end
