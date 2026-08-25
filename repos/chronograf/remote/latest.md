## `chronograf:latest`

```console
$ docker pull chronograf@sha256:1aa585346868ef0859c507b2c8544a175ad308024765929f5df5b64a9679031d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:91d1bc450462e134e8c9c745deef90897c3076ec955a822db729ac04748e783b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96354678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495f3ac7b07bf66dfc73e8f2cdf0d7739a2620f1dd4af250b73ba4dc80c535ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:04 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 25 Aug 2026 00:51:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:51:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3407de91a6aa469bca4f509206c4c4bc419dc732b28c0a9a4aa6075c59d62f6`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 7.9 MB (7900684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d8ee441e11d1644cf498327aacb33a2d382375c64149760f36cfbed64a6677`  
		Last Modified: Tue, 25 Aug 2026 00:51:25 GMT  
		Size: 60.2 MB (60196862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64a7c91a85dac550dbc649871b901a1b57255b2ba5811404f3961c253b77ace`  
		Last Modified: Tue, 25 Aug 2026 00:51:23 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f36886e803c796e78956eb2455d94c7904e50cf1f9ba60bf5f3e444fc66239e`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7288857c3358e4a5d3be86ab58bccdd66c489e05c1ec02646e82cb27d4f66421`  
		Last Modified: Tue, 25 Aug 2026 00:51:25 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:cf3cbcb3ff000aea81db4844eec0d106cfd238047d727885af6b2958c9e33816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcb81677cc8cfa36725d0ec7bd7d6e42e9b9c4707df9d056fcbc98e70c33d2e`

```dockerfile
```

-	Layers:
	-	`sha256:7d243252cab205fe4f05765306d4e4dad995ba54ead350621576e961c3c2bc27`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 2.9 MB (2878977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:381d2f854a5bf1f8995c05065b6dc2bd374decc45ec827bfd5be4ea7e11bdfb7`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:ffb3334aef51cf13f37536723764c428be116bacdfe65a600e4d0146e69ca47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93061771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eae633872acdc3ca6d1392cbde02bd759b7af9d63d4170cd3c30b5978b1a3be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 25 Aug 2026 00:53:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:53:13 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:53:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99297681e0dd07f2ba0f1f39207553743f8a841b33b7d3c651a287209d3676d`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 7.7 MB (7709528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a3896a5ecafd661a446eb6f6273c43caaac1ff710b1efb83c5984dfe20bc73`  
		Last Modified: Tue, 25 Aug 2026 00:53:28 GMT  
		Size: 57.2 MB (57210492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d1433aec05ae7a5402425be26aa8932f97a5555b2bbcad701dcffc6688369f`  
		Last Modified: Tue, 25 Aug 2026 00:53:26 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05482c4550e31f974518ae4f00b9cee27371c946106e76b62296d63d0d26571`  
		Last Modified: Tue, 25 Aug 2026 00:53:26 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde8d6ccdedb1b2d2cd137654b84342eb52d06305d1db58ead20fc7f5d99d2d6`  
		Last Modified: Tue, 25 Aug 2026 00:53:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:4c81879ced2234c6a0999e30c3a4aec512fd55dda0d53a18fb6b66dbf8b67da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1964fb9fbb6def69c9635029b69d9436d651bcb5c5e53a6cf3aaee3f9488fe2`

```dockerfile
```

-	Layers:
	-	`sha256:d1867608325e7748778db383de5da5acff7f324a3b049a60ac75d3ddb0200a9e`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 2.9 MB (2878191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c2f264265152b0cf3871e7be0258882e6aeaa83e06d78e574b5258f72bf043f`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
