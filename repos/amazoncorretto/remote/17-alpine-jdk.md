## `amazoncorretto:17-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:c92e905c7d997a28279c24a2eb347836db0e3ca36a61d5fbd2c9c360b2674a05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9b9d7762db9c51bc1c95607749dabc5ef514da72ffbad32642a42d3b6921283d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153068913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4100e0bccb2827740f4f96ff7473c4fd40c814e9b23a0f4853beb1251b914b35`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:15 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:13:15 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab8ed2e78889c66f105bfdd751dd8febb071910eb781f5cfc46ab14902ef024`  
		Last Modified: Thu, 05 Nov 2026 19:13:32 GMT  
		Size: 149.2 MB (149215240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7d9155c3e84983c7460e63781ee675b9e021cc48d10cb4f42b2f51e193f9186d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957fd6ca3f81c8d75ade9ed64ed0ee723b9a2c633cadc1f14879f936de35ff78`

```dockerfile
```

-	Layers:
	-	`sha256:92f6a1f2a35bbf282e3a9ad2e0c0de3da9c1dba465e8c8946a3e04002fcf2674`  
		Last Modified: Thu, 05 Nov 2026 19:13:29 GMT  
		Size: 583.9 KB (583882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43fca294edf094a1e59398b9e1c094cdc04adeafc99a7c5b8413c09adbf4ee66`  
		Last Modified: Thu, 05 Nov 2026 19:13:29 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6bf77b6b4ec789c3d04b0f886cc7140c08d80549e3cd3e335b2f7e605026d162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151872253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18783b4264d0c3f608d0c729b1d4e620222eb01c627101e40f3773a1d5066755`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:09:01 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:09:01 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:09:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:09:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:09:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dde6e8ed261fb47a4b6afeca4ea82299c2cd2853e78d8d3d507ea8acc81c7d`  
		Last Modified: Thu, 05 Nov 2026 19:09:18 GMT  
		Size: 147.7 MB (147681658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:84b335fc5f00085805bc1cca3db244cf678b6442c0bb5cd0f3902b1b40208687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da21572eaf71f1bddf4a26fad25edbc3c5afeea367ce3ca55edd50f3592842a2`

```dockerfile
```

-	Layers:
	-	`sha256:9dda0651b2295edd7ec24c569fb186c3a824a8feee5dae62c5f50f167bcdb9ec`  
		Last Modified: Thu, 05 Nov 2026 19:09:15 GMT  
		Size: 582.7 KB (582699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bedf3f0ee693f844835e7fe68b17b0baf4686541d29529ab72b3c1051a5cf448`  
		Last Modified: Thu, 05 Nov 2026 19:09:15 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
