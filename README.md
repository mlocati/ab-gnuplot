# ab-gnuplot

This project provodes a script that can be used to easily benchmark the response time of different URLs, or the same URL but switching git branches.

This uses [ab - Apache HTTP server benchmarking tool](https://httpd.apache.org/docs/2.4/programs/ab.html) to collect the statistics, and [gnuplot](http://www.gnuplot.info/) to draw them.

## Sample output

Here's a sample result:

![Sample image](https://raw.githubusercontent.com/mlocati/ab-gnuplot/main/images/example.png)

## Usage

### Using the script directly

You can use the provided `ab-gnuplot` PHP script (on Windows you can call it by using the `ab-gnuplot.bat` wrapper).

To get help, use the `-h` option.

Example (when using the script directly):

```sh
./ab-gnuplot -h
```

### Using the Docker image

You can also use the pre-built `mlocati/ab-gnuplot` Docker image.

To get help, use the `-h` option.

```sh
docker run --rm -it mlocati/ab-gnuplot -h
```
