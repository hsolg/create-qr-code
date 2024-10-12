# create-qr-code
Create QR codes in a Docker container using qrcode from NPM

## Building the image

```
./build-image.sh
```

## Creating QR codes

The QR code will be created by invoking a CLI utility from the qrcode NPM
package inside a Docker container. The container is intended to be started
from inside the repository. It will mount the `output` directory inside the
container and save the output file there.

The `create-qr-code.sh` script can be used to run the container. It can be
used in the following ways:

Print usage information:
```
./create-qr-code.sh
```

Print a QR code for a URL (or any other text) in the terminal:
```
./create-qr-code.sh https://yr.no/
```

Save a QR code for a URL (or any other text) to a file:
```
./create-qr-code.sh yr.png https://yr.no/
./create-qr-code.sh yr.svg https://yr.no/
./create-qr-code.sh yr.txt https://yr.no/
```
