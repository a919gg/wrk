-- random host

method = "GET"
path = "/test"

max = 1000

request = function()
    wrk.headers["User-Agent"] = "Mobile"
    wrk.headers["Cookie"] = "__uid=;"
    wrk.headers["Referer"] = "www.google.com"

    n = math.random(1, 100000) % max
    wrk.headers["Host"] = "www."..n..".com"

    return wrk.format(method, path)
end
