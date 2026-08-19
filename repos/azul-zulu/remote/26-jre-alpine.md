## `azul-zulu:26-jre-alpine`

```console
$ docker pull azul-zulu@sha256:4e8115a77b34260b7b1ff96dfc9b1935388bdb521d2b217459d58a797dda92a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ea00bd6d16680698746afdd8f86ebe2c3b45f61f8f54db8a02a6e593d90407c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91761256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813a35300f5075b9dfd2d51307083a715e446e9befc23131a025086440a2e893`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:35 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:35 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:35 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3136a6873fe8c7744f45c6134400568fbf32bcf8e783098ac88ed16536365a79`  
		Last Modified: Wed, 19 Aug 2026 17:37:48 GMT  
		Size: 87.9 MB (87916835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6b62b0ea2c400ff82b65e65ca9a73175f287960b61a141df8da633cdb4d8a00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fe74ffdfd9e6cb0ae5d953203c66affaaa9707aff96aac8a76d219cda94f4d`

```dockerfile
```

-	Layers:
	-	`sha256:686ef19033cf7cfb714c41c2b0e09840772408bf7c79306cc9690b5a07bef90d`  
		Last Modified: Wed, 19 Aug 2026 17:37:46 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ee032a2d74165e91192f058c8b8fc922701818eec055da4b008535e1bd92c3af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90907763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45afed88d3ab8eaa9274de483e0a1fad9789f15067925bf86c742e6519a47ac6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:49 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:49 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:49 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0fa2a28fbb4927a05d573ce03148ceae8952c6bc6187581456ad536cb93d89b`  
		Last Modified: Wed, 19 Aug 2026 17:38:03 GMT  
		Size: 86.7 MB (86725903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b8e0acc6435589f1d705152aed8362dbd53da1055da2e4ee49cc7c4d11f8303d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9054db6f468b267249c12739b3861d81982ef2c1ffff54559a03aba0c95244f7`

```dockerfile
```

-	Layers:
	-	`sha256:80511660f2e89b4098e180ab24d8760b7201c8b63c8dbd3fd33d8b1ce42af722`  
		Last Modified: Wed, 19 Aug 2026 17:38:01 GMT  
		Size: 7.6 KB (7582 bytes)  
		MIME: application/vnd.in-toto+json
