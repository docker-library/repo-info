## `azul-zulu:27-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:5f420852ff460223e69932c42343c7c6ce73401ca621771c175b0f859c7865e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bfdf1ec89912f2809a2fa472bc6ddf4965bd47f3b4d7b4c5d18753e9de0a6e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.1 MB (183060805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a68c007251920fbe66bf66e748c9f1a843ac322065a39e502fb621f3578a0d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:51 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:51 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27.0.1.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 05 Nov 2026 19:16:51 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:16:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb26410ade49f890f16dacbfcfb20ca69f5b8db8e576dde84f235403b04760b`  
		Last Modified: Thu, 05 Nov 2026 19:17:09 GMT  
		Size: 179.2 MB (179208216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f657a211d51e1b786e667aafdd2219d63e065d6c0d2f480e97a7b7f360b6725b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8630eecefb02bcd2df918d896f9acfd26a2b405ad182970571a8c5966cbc321c`

```dockerfile
```

-	Layers:
	-	`sha256:fd3a690ab2e4f2428b3b0f168450746de02341bb0029c6dc86b1a87f8a0f472a`  
		Last Modified: Thu, 05 Nov 2026 19:17:05 GMT  
		Size: 7.6 KB (7592 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:23b8a55d5ce287ecb368fd14ae8d28f47539a7f6f81fbc85fd8b6206267e0904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180987622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebd9f6f8f950fede4714d41d75637f85cadf1ce96fc444c0ccb760ce16ffb87`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:42 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:42 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27.0.1.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 05 Nov 2026 19:12:42 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:12:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c40524bc154799b5586a7544ff001624206306c0b7355f09865eb8deb865be5e`  
		Last Modified: Thu, 05 Nov 2026 19:13:00 GMT  
		Size: 176.8 MB (176797401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2c987f039dd2f3ae98ad74db9e78804da580977f6a9edbb259f9070164eb680a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195558eb26c6f0bfd83cc854505e38c3aab86debb6a69a9b5716601d5c71a024`

```dockerfile
```

-	Layers:
	-	`sha256:d0a5300272f72a766cbf0e5c27e1307de3d2396c9740ddba6cc62838231876bb`  
		Last Modified: Thu, 05 Nov 2026 19:12:56 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.in-toto+json
