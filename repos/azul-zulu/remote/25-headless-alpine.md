## `azul-zulu:25-headless-alpine`

```console
$ docker pull azul-zulu@sha256:684640feca05d98c1cadba06ba228a253fa2f1f5922083ffe7788e242ccee86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:faf53c1269a59a02e59be447f5a45c7a3f157f9f1b5e10fc059a6b798da8b56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181067531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be88fd17bec9cdd51148d86d79d3b813c50a4b5c4f1ec45fedd4c598ebf7bca`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:43:04 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:04 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.5.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:43:04 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b3104951e0f4e7ee89178b93edb69615f20711202cf64e878eea6ce11891947`  
		Last Modified: Wed, 18 Nov 2026 02:43:22 GMT  
		Size: 177.2 MB (177214942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3dc0c94af0d5f70be3bd4b2c0a59b7588e482ee886e00717771ce99773410835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7af3db59a3d0df122e15a5edc641da95c5c385f16afe8b3c61434c092d898e`

```dockerfile
```

-	Layers:
	-	`sha256:f85f71b632dabbc65b1e06c7c231ce8fbca08cf674a7ca7d1b8ace78ecc126dc`  
		Last Modified: Wed, 18 Nov 2026 02:43:17 GMT  
		Size: 7.6 KB (7584 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0f4a6721e207768027a465812f53c755e1d14748718c5871a85940739060c839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178954745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5352463a9fdb59f831d2084e86e52e593485faf24dd08e2e7bee8f3e639707b`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:58 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.5.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:42:58 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:42:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5094d1aad0f21ac56a7c2f64d5427e51b1913d0d415e19078a9e2261c8241a53`  
		Last Modified: Wed, 18 Nov 2026 02:43:16 GMT  
		Size: 174.8 MB (174764524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:902e3c4c4703a40fc67a262d8fe9d481b35721ac32ac20548db9249a9d23a020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ebfaa36ec9f16a80848e14d35e19ad0f05fc4ee3a17ba2b3492622989de194`

```dockerfile
```

-	Layers:
	-	`sha256:52e8ce41471ad8fd2ad895b642bfd95668c8a044e3098ef8299a9b1328e7c9fe`  
		Last Modified: Wed, 18 Nov 2026 02:43:12 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.in-toto+json
