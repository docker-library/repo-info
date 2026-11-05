## `amazoncorretto:17-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:42e72d0925ea7b95d5672fd422c4fb34f74f88ee5ac1627219903f87cadf7e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:218cb4d21791c387ef16223bea414883074052463415b792dbc04d7702e8c773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153043224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7f118eea8aaa2f445a99c464aa99cd73483dcab99b68e07f6b93744132bb9a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:11 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:13:11 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:11 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1e4ff4e993e27b9613908b06db45bbcd5580e65ba4b67b82fe03cb4e0ccba`  
		Last Modified: Thu, 05 Nov 2026 19:13:27 GMT  
		Size: 149.2 MB (149190635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eed12a26cab2dc701ec3134c7b0166fd3c7f788fa8f6d84a78b00d05ad7f79bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.9 KB (591881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f0b941271734945bbc9e5a95f6c1afe15d0097b8366f5c12e3e8d49ca28480`

```dockerfile
```

-	Layers:
	-	`sha256:aef82707273cdd7f56fe76209ac7cb4dda0227934cd6d129d562bee097097913`  
		Last Modified: Thu, 05 Nov 2026 19:13:24 GMT  
		Size: 582.5 KB (582503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c22706e54942efead8112b4e5ab64e4056164e15753ef9e65c86ecd5130711e7`  
		Last Modified: Thu, 05 Nov 2026 19:13:24 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:cd268f313683f960f057acb4930ba8d56cc2c97df6ae0599131bb7a3a8bcdb72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151854198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f2da0ce3527561614e3961f445e3a894115520ec2d53c0847dc9b6eb6397b4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:46 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:40:46 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:46 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dde92da43ddd507e12365efbd4e51b491753e80e0e49658d583aaf5453254f7`  
		Last Modified: Tue, 27 Oct 2026 16:41:03 GMT  
		Size: 147.7 MB (147664704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:04e49d448f68ddd8fa8a47c98e4117f77fd6af6b8e269dd52619fb70af4a97a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.8 KB (590755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cacaa96748c5e1ab5d375e976ef1f9e03757ab27134684ed6682e3962a54b81`

```dockerfile
```

-	Layers:
	-	`sha256:fd2876c6970af4fbfd3bfdf059ceaf18823b416e7a956a7ba8b306f2c41aa076`  
		Last Modified: Tue, 27 Oct 2026 16:41:00 GMT  
		Size: 581.3 KB (581272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b0f3d189fae0e17ee709327741f63cd5301311fd84d7470a55ae65599d889e6`  
		Last Modified: Tue, 27 Oct 2026 16:41:00 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
