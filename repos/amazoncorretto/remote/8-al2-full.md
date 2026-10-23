## `amazoncorretto:8-al2-full`

```console
$ docker pull amazoncorretto@sha256:fc941b9d429a7ca95723ca683ca367b90defeafc27ed457f59aaa025568e5cab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:028688ee906468f2e6dfee2378c50ac38fc6e10923e9b12fd286b097c3145f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123023470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b29b0cd6d8c07588c6793b04bdc4ffc6c9f3a2e5ae1888c63d1e510f3a00b2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:08:53 GMT
ARG version=1.8.0_504.b04-1
# Fri, 23 Oct 2026 01:08:53 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 01:08:53 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:08:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4a541c6a8531115444517fdd9623468ec436b0e6c718ff33eb236894fe37c4`  
		Last Modified: Fri, 23 Oct 2026 01:09:08 GMT  
		Size: 60.0 MB (60049570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cf5792ace826f0175e4c549728ce6ec3b625961ac3ec83056170d0c71d6474d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ad90a135efc76247b10cbc4db59807c52a6cebbfac81c2e8fc23f367913a5d`

```dockerfile
```

-	Layers:
	-	`sha256:f53c223320e29b64831cf4810e52c78a79bc6cd4e5b3b3cd20e9853dc49fcb2c`  
		Last Modified: Fri, 23 Oct 2026 01:09:06 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45e46a15a640d6d6f6af3703a9a535d43124e4f16cadb32f35bcbb8689136dff`  
		Last Modified: Fri, 23 Oct 2026 01:09:06 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6307111ef628ee2717bc9165626c1e5f1711ec4bfc8b9eeea841a8f8a16b2d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124797232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e84bd840d16bbfbd3342dcabb36ece630275ebf31619aad4b2ec40ee7e453a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:08:29 GMT
ARG version=1.8.0_504.b04-1
# Fri, 23 Oct 2026 01:08:29 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 01:08:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:08:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4f1d7575f647aad32f9071899322e6351d8dd6ed8575d73db913e039a73a7a`  
		Last Modified: Fri, 23 Oct 2026 01:08:45 GMT  
		Size: 60.0 MB (59961513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c1a87eae2176407a8c603578441d551b09e790c2d3b24df6305e5afca66129f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2029298c55bf0e0090b1be0ff3ac034cb0df62f8e2acb76fc00db6281b6876ca`

```dockerfile
```

-	Layers:
	-	`sha256:9aeceaabb4b1631b258f9f65fffc19414f6d1b3ef1e42a9c7d82327b6c5d4fdc`  
		Last Modified: Fri, 23 Oct 2026 01:08:43 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96b32c1a9f3816f080e571e1096af86850aecf768e84fe8712cdb98d4f71367f`  
		Last Modified: Fri, 23 Oct 2026 01:08:43 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
