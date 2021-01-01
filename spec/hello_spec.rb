require_relative "./spec_helper"

require_relative 'scheduler'
Fiber.set_scheduler Scheduler.new

describe "hello" do
  it "should ok" do
    expect(1).to eq(1)
  end
end

describe "thread" do
  it "should ok" do
    t = Thread.new {}
    t.join
  end
end
