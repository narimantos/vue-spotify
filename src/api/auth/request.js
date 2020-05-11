import axios from "axios";

//@todo move baseURL to config file

const baseURL =
  process.env.NODE_ENV === "production"
    ? "http://nariman.nl:4040/"
    : "http://nariman.nl:4040/";

const request = axios.create({
  baseURL
});

export default request;
