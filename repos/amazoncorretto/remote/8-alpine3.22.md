## `amazoncorretto:8-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:2f765badd29c4cdba0787756c6e956612710df87e7c285d5b4b15619707872f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:79c06300bcf674fa6757e7a7cae0f95b48cfd5ee0897790fef8e3e20ce093ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104659775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2092226cbcc470c9a28f13fd8916c219345c53ba72001e3d15d28a7e45123afe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:06 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:06 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:06 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711724aa7980eb77b2b677800d1669fa8f7dfc1ab55f4bfdb6fce70b3bad13c1`  
		Last Modified: Thu, 05 Nov 2026 19:12:20 GMT  
		Size: 100.9 MB (100865400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:767e36f3bed7cbbbdedc690540449e25d77b2680c8ba7a5b9030bc8b95a70674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6437d3a6de74c8a22461da450293cb56df8e9d772e89ef1c9f54b72feab0aa`

```dockerfile
```

-	Layers:
	-	`sha256:5e347b849787448ecd60a36b0fe56f6482df76345a6e2dd3ec4dbd77a0398c84`  
		Last Modified: Thu, 05 Nov 2026 19:12:17 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1ef4f08100b41ad817c0381576d7f5a9c6d701a486c2d149a1a5e00de4ada6`  
		Last Modified: Thu, 05 Nov 2026 19:12:17 GMT  
		Size: 9.4 KB (9354 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bbcdd278286d9392c074ad9f49133d64923ba488323c5178b36b9f4817d98c32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104823552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf3bc93a58046e8c2ce97453539e0b756f2b0f2fac01c85f2f69425d18b5e0e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:07:48 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:07:48 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:07:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:07:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5c475aa8ad6bcd5f2fe2d26e621655c0b9b70c816f0e8363adfaa2cbb74d27`  
		Last Modified: Thu, 05 Nov 2026 19:08:02 GMT  
		Size: 100.7 MB (100696167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:97a6e2b14b6a7372e00cfdfe64115390188ead24d6675cb8d770cafb5a264449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c83fae049bd7feb6e3fb5245b6ed4dfedc145ecbe0a6a68de1440a794e7732a`

```dockerfile
```

-	Layers:
	-	`sha256:3d6a576fcbd9ddbf8b66672c5233818c1aa0b6de176d078e292a3f9eb2ad1922`  
		Last Modified: Thu, 05 Nov 2026 19:07:59 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcbf6b1498d982506bff5ac89f680f558aa34f12941176e2841b875ec5aa0aaf`  
		Last Modified: Thu, 05 Nov 2026 19:07:59 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
