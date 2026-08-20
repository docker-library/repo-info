## `amazoncorretto:11-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:0867ff8647c8c9619a390762e4acd3770b5366ce5f30a8f042d57a3f2b0fcac2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e38c3b35ef663c3d1a36079e08900844733f8c3ed4da71005f964be1286880e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147819566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd5ef531611ca9b98f0c4a54af2ccace955fe5d4c00d691e99213aa880e08f1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:31 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:19:31 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:31 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d77fcfdf369ed0b30258b04750523dc4fffdeefd5a671d659e81fb012fd1dd`  
		Last Modified: Thu, 20 Aug 2026 17:19:48 GMT  
		Size: 144.0 MB (143973175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1fa42d60ab506e5c81d8969d3387018653bcd868a18acb39d1c296558c5ff935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e310364e8652042b3fe4c0f6efc909b96d2bb08dfadf86cb5ea890aa8c85d7`

```dockerfile
```

-	Layers:
	-	`sha256:36d3197c16f71c9fe1e2005217837c154761f71cb6a286d6fdd6b96788140140`  
		Last Modified: Thu, 20 Aug 2026 17:19:45 GMT  
		Size: 589.0 KB (589034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a11a3bc18a6bda04384904592ead8951980c1302db980324e3fec0095be6c1d`  
		Last Modified: Thu, 20 Aug 2026 17:19:45 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7e74b121c6808bfcc03080129cd5a4f67a9565732ab19b6d060ff290b5ead41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146530033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc064c5b8b4e48d8ec94e1a351208484b52d8042c3280903d571f1ae14b8f3f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:19 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:16:19 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:19 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fcc121ed55e6b97313b7f5fa75e0188c609fdc67607859a02d68bd2c1b4da4`  
		Last Modified: Thu, 20 Aug 2026 17:16:36 GMT  
		Size: 142.3 MB (142346996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ae70dd97d69f134e9fa597f215fa0f384a9a8c74ca84abe13ef4ecf2f7e9246f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 KB (599327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c179cb742f0f3d104c2c99dca9ddf7ce9668f60b3c05fb782f9cb29a59fc5007`

```dockerfile
```

-	Layers:
	-	`sha256:9059a2be58a3338879025b3971275203428bdb77b5c67fd1e05968b2adad10d0`  
		Last Modified: Thu, 20 Aug 2026 17:16:33 GMT  
		Size: 588.5 KB (588488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f616dfd076ea906f364039722f16bb84e7642dbe32588e9aa64a200e82458be0`  
		Last Modified: Thu, 20 Aug 2026 17:16:32 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
