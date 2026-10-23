## `amazoncorretto:17-al2-generic`

```console
$ docker pull amazoncorretto@sha256:b00c7db75ce9330e85d635b922337a9b7aa923b10af2d95075fc087e7deb37f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:166f6038f08984ae6645f447d694c60edc1d95dd9e964233af90798346074e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215761429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b624f7c3bec32aa47e83cc0cb73770b378ae329d809e7cdf30a4f7dbd24068f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:07 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:07 GMT
# ARGS: version=17.0.21.0.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 18:08:07 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4e0ecc809dc9a2e0e4611b5b5750559d34c4dcf121a4291f6f614c8bedef9c`  
		Last Modified: Fri, 23 Oct 2026 18:08:26 GMT  
		Size: 152.8 MB (152787529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0d0e393b75f19b99b8c5f9c63f80135182558381e48fa52e16fb4e7d2e98fae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b0921b05506e72852b75a300c69c4dd3e50015931821f32db4bb21a48d69d0`

```dockerfile
```

-	Layers:
	-	`sha256:8293d944190bc8696155adbbaee1455f52ef11183b3a297744063699d95f4810`  
		Last Modified: Fri, 23 Oct 2026 18:08:23 GMT  
		Size: 5.5 MB (5536343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d39d8c4889516e9e3d9eaefd9e40bfed091597d8cc2a172fff5af2e529abb381`  
		Last Modified: Fri, 23 Oct 2026 18:08:22 GMT  
		Size: 10.9 KB (10911 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a745f9f69bc5e5b9c8cc0a12e4873503103bea08c2c543280d07675a24b95967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216410404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4575a9dc199450de44e0a3229edaf7738a52fd3a0d95da342ac7e0269bf059cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:08 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:08 GMT
# ARGS: version=17.0.21.0.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 18:08:08 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84301fed8e761e351920aac85f2cc3f3126420be2548b13beb72e1bd5fc04000`  
		Last Modified: Fri, 23 Oct 2026 18:08:31 GMT  
		Size: 151.6 MB (151574685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3d51b76f37e2657ff426ea81306a32b788ec3348f7ae6e1ad6e5ee31accf058d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052444cd24e02abb470c27a90647ca50276f0356d790ae4ed19de3e7753287d7`

```dockerfile
```

-	Layers:
	-	`sha256:e5f2f2251c55b6a8bcce8ab3bfacb1daf4a1045977b05bc82116813e49e32627`  
		Last Modified: Fri, 23 Oct 2026 18:08:26 GMT  
		Size: 5.5 MB (5535020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53b930c33f12cd819fc9802a0ce5a5ca9a5e15b40351d93d4d421ff99010a787`  
		Last Modified: Fri, 23 Oct 2026 18:08:26 GMT  
		Size: 11.1 KB (11051 bytes)  
		MIME: application/vnd.in-toto+json
