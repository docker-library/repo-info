## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d24d9916c0ed0a1e518cf6c2ea0547272b0542f4ab366dd20c9268e2ddd8babe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:000159d63d299af411d652c73c117a5e8c9829b9ac2e2332d72aaadb3c56e9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96337319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1681030e8041c5d200f91b106ac697f8a25a3bd0aa8f9da2699b4024b34d9b5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Wed, 05 Aug 2026 00:45:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:45:13 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:45:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a754127ba88fde1156049affac3bfb5eb26ce6f7db88ffba0a2abd20bc20dae`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 7.9 MB (7883370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4899e682b562cd848504519328c18508833a532f3e1ea8be053d1b5048862e33`  
		Last Modified: Wed, 05 Aug 2026 00:45:29 GMT  
		Size: 60.2 MB (60196897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c936bf5a3357dd2ea34f493ad3a22f50d042bf69b965397bc3d32eec1eccde`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35efd783094c2a9e5a54031dec4373217bd5d47e70615bba04bab7b25b9d81eb`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12406125645cf44b14440a9048b85643d253b1c0df42187c08a951fadea102f3`  
		Last Modified: Wed, 05 Aug 2026 00:45:29 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:ffc1997b25f50f7d2b1a6dff3cb7c817e85e7cb4d2857d3ed88ccacd5aa34d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093ebe6331717a2b6860b174c863fd19524aaaed3c9add749ad609f05ada78cf`

```dockerfile
```

-	Layers:
	-	`sha256:336dd9eef5cad1b4d584c73be7bc20c5e246acf66737e3ed729944608c0b2b28`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 2.9 MB (2873774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:947e31408b94680bb597afdfd9e6176ec2cd6ba0471cba07b38bc81b9b405590`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6b6b5b5494817b2c28767ba9b56be145224c395870293ebc4314e1d9048115d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93051998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adf8cafc3b9b4c10c5bfc614eb451e9face92293cf7e38d120713bd01c0162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Wed, 05 Aug 2026 00:47:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:47:34 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:47:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e5e28f6b808c9ebbfc289e2f368196731a609ec6f0d4a578e65dd4d73acb85`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 7.7 MB (7699826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2dcf029d4444ee7efd06abd59fb649226ba122d1b817450770ef3ac6df9e32`  
		Last Modified: Wed, 05 Aug 2026 00:47:49 GMT  
		Size: 57.2 MB (57210497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2955069a9f826f780e013364d10d38e1580d46e65ebf2f235b734c6f6c05af3`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40d236f326e946f252982fe35f29e835f31cc634e7ac1c2ccf75b5731e8cb0f`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4695cd33170f3a2e9d55d12bae4bbac095542f8718cec8bd9da540e5b9c033`  
		Last Modified: Wed, 05 Aug 2026 00:47:48 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:916afd666d1a1371560bf12fd34a9d6e8ae61f7b11aa6a73fc67bb2bf150b672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18a8b466bfa97e6435f4728db3caf3d85e88ae54b4627a22d0cd6ad73c7f254`

```dockerfile
```

-	Layers:
	-	`sha256:ed939430ccb1d2aac0387940577a3b06c8577fe00c3a70833bd98631dc3c2bb9`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 2.9 MB (2872988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16bb7b888e92d79d70f930d505d3970ef8b033673c1dda25c4f1f28f5b0b1f4b`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
