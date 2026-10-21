## `azul-zulu:11-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:12424be716616bbbf9eea863721e4cc0125a2bb0fcbc25a7309d46d7fe089070
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:867cac1cdb15e89e516295411f0a80bceb3e64c91ab9db3608cfe380522ea855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62631556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f44d52e2b952c49e14b1396ff7284b0cbefcf11c6118b5eb5f7ab86ec94564`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:33 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.32.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 21:17:33 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be7b45c10968ac73c0bdf3ad20c4f0df025dd26ef3715998b3589568d01889a`  
		Last Modified: Wed, 21 Oct 2026 21:17:43 GMT  
		Size: 58.8 MB (58779329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6772ea30fbc78cab40c5bf9e313e5657e0feae5b333e847ad234a92448df35b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b174f30f0e20fba7b1aa829df6d7b09bd1a828d5f1feb72686a7a0856c3d19`

```dockerfile
```

-	Layers:
	-	`sha256:bc94d80b38ff4211a16cbabfa545bb04930da50d95fcf8b1da26500c1f3d704c`  
		Last Modified: Wed, 21 Oct 2026 21:17:41 GMT  
		Size: 7.6 KB (7586 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a22be10a663971348d4ddd4d455b33644f89dd846993e6b4907289f13be4ed75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62131097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c953bf8d54781327927458f71e2b27920e6da7f45a126fbc393df8b4fba7141a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:10 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.32.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 21:18:10 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b7e51999325f98989b379053d3a97143b2b21586d3f14a76be69dab370f570`  
		Last Modified: Wed, 21 Oct 2026 21:18:20 GMT  
		Size: 57.9 MB (57941603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:104f10d6d04fe8d1fb07d04c358818dfa47da0a26665c53f3390ff1c5127ce47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777445f01c69369d1ef019acc9a9d34aedfc37aa991563f825da958d0ab74d09`

```dockerfile
```

-	Layers:
	-	`sha256:5f38d9a0a02365c91544191c64d4e07c5dcdc31a39e7d176e2a6b0aa0f34bc3d`  
		Last Modified: Wed, 21 Oct 2026 21:18:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.in-toto+json
