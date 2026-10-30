## `amazoncorretto:17-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:13d5c8cec7b11bc5825c9d4892c9791dd9e4619786f53efccaf90cc792beb2c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:43361c0e3ae0d7442ab065175eef679e773cafd64ddc8c1e046938758139132f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215765222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d963112669294fd7cb40e6ddfa8e9cdd789e899e715435bd7352a2fb05f27643`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:57 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:43:57 GMT
# ARGS: version=17.0.21.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 30 Oct 2026 19:43:57 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc04d8f171f87866efade37b9d53cf28002787780ec7a55084349ddef57dfee0`  
		Last Modified: Fri, 30 Oct 2026 19:44:17 GMT  
		Size: 152.8 MB (152791322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:644b7ef82f6c7a4eff9962582b553bb693d92f3a5aa700bfd873f43a43766e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c3e8b81cc637f87d291a0b17b033031776eb95aa137eb3d9807e71fa052e94`

```dockerfile
```

-	Layers:
	-	`sha256:2e709f87085f10a31f8f9909f55410d5989738f71bac688cef3e089c063ab06f`  
		Last Modified: Fri, 30 Oct 2026 19:44:14 GMT  
		Size: 5.5 MB (5536343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9af2c51e6d4d72d89eab1e796e40a778d21c8c0ea790ad5fc2403823ab533c6c`  
		Last Modified: Fri, 30 Oct 2026 19:44:14 GMT  
		Size: 10.9 KB (10911 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2cbc6648fbf7635f3c4c6bd3db6ab77c4dbedb6e9df5b2fb1a58ca7b162d5f9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216398925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e3752177157168851463c1e86ba974c8b93ba2c1a2d008d01c1cc6cc37a82f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:49 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:43:49 GMT
# ARGS: version=17.0.21.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 30 Oct 2026 19:43:49 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75208a261faf89c66b51772a504bdff1ba7ec5a7cfbd578e2733284851a89c12`  
		Last Modified: Fri, 30 Oct 2026 19:44:10 GMT  
		Size: 151.6 MB (151563206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b72b50a7fed0ea9855f53e1f06c50cd319ad44e718c97d4abade8babd6adc419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c66ec5d70d6a327a4cae95c8e0bcf01c335b1a573f2b86ae8708db4c3ae18`

```dockerfile
```

-	Layers:
	-	`sha256:2319240e89454136da865c2acac9b64b0b3b3647a64e2dcbe00ebdc50045b801`  
		Last Modified: Fri, 30 Oct 2026 19:44:07 GMT  
		Size: 5.5 MB (5535020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8592fef2b3e32771851a6cfecb8c5dc4208417b5d59b914f2cce464f8ce582f8`  
		Last Modified: Fri, 30 Oct 2026 19:44:06 GMT  
		Size: 11.1 KB (11051 bytes)  
		MIME: application/vnd.in-toto+json
