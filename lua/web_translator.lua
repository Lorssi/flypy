local function web_translator(input, seg)
    if (input == "/deepseek" or input == "/ds")  then
        --- Candidate(type, start, end, text, comment)
        yield(Candidate("website", seg.start, seg._end, "https://www.deepseek.com/", "DeepSeek官网"))
    elseif (input == "/github" or input == "/git")  then
        yield(Candidate("website", seg.start, seg._end, "https://github.com", "GitHub官网"))
    elseif (input == "/bilibili" or input == "/bi")  then
        yield(Candidate("website", seg.start, seg._end, "https://www.bilibili.com/", "哔哩哔哩"))
    end
end

return web_translator