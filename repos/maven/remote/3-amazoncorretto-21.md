## `maven:3-amazoncorretto-21`

```console
$ docker pull maven@sha256:825646d3e530a9caec81a6a0e0cddea4d314bf5692b5861d52bf4e0d48277d08
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21` - linux; amd64

```console
$ docker pull maven@sha256:3268f9128117a1f20bf8d16bbc267dfad633b63e0871351e7a70802eafeff49a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.7 MB (451703296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a18e74885d65c1ea7216ca63e144f98db7dd52b1feb65b88d9ff0e73d6c0081`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:59 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:59 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:14:32 GMT
ARG version=21.0.11.10-1
# Mon, 22 Jun 2026 18:14:32 GMT
# ARGS: version=21.0.11.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 22 Jun 2026 18:14:32 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:14:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 02 Jul 2026 06:45:05 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 02 Jul 2026 06:45:12 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 02 Jul 2026 06:45:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:45:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:45:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:45:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:45:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:45:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:45:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:45:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:45:13 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:45:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:45:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:45:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b5a31d0a32c9342b5b53f098c4d8ac4fadeb6cbc6b34b2e4424fd39eb880bf9a`  
		Last Modified: Sat, 13 Jun 2026 04:09:34 GMT  
		Size: 62.9 MB (62942019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92113e9c830991e7d2cd18b6ce514b1aa820517c514266197ea2d8073457c605`  
		Last Modified: Mon, 22 Jun 2026 18:14:54 GMT  
		Size: 165.8 MB (165761238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5202e08aeb2ac17fdb153cba348284274636b7ce4205cad32753652ed9203a51`  
		Last Modified: Thu, 02 Jul 2026 06:45:44 GMT  
		Size: 183.6 MB (183580672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1defc3ee2fdfa7f3693a83fa11c9af3d6078b285860d54d8a413d41310f85a2`  
		Last Modified: Thu, 02 Jul 2026 06:45:40 GMT  
		Size: 30.1 MB (30058380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6c5993923a022f359765dd7570e58dcf3b8cd4d40b8b4fe5d77ebf545ad115`  
		Last Modified: Thu, 02 Jul 2026 06:45:39 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51546cbb20f943af4f92a1eea811c0cf8ae4226f3fe5fc5758fed14a8f619431`  
		Last Modified: Thu, 02 Jul 2026 06:45:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980405843bc06bae334f358207b564f882a697271bcb589869d68433e4bb9990`  
		Last Modified: Thu, 02 Jul 2026 06:45:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:861f9690d076d84ebabdd479678933f49e054b1cf5291c913d4114fffe8e0070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6949285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f38eee32a4d7b3a14a319d9ad3afa6088906b0513d2e3995cfb516e9cf8614`

```dockerfile
```

-	Layers:
	-	`sha256:4759d3eb45a10148cb3fecdb4e6f98bbc305d41fe13dbb086e55c932c34df314`  
		Last Modified: Thu, 02 Jul 2026 06:45:39 GMT  
		Size: 6.9 MB (6933068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ca631d542a68a5bec51eaaac862f7506c752f579478719075b096b6e37bc3d7`  
		Last Modified: Thu, 02 Jul 2026 06:45:38 GMT  
		Size: 16.2 KB (16217 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:efe5f90d1bf9ec2cb7908ffe25da453b2cf6d4a9e9e60fb5cccf554d9ca524a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.3 MB (428320059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65b6fa927d93ffb8b1357a47781df001faab46f8e7279245113c569bac88738`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 18:00:28 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 18:00:28 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:14:53 GMT
ARG version=21.0.11.10-1
# Mon, 22 Jun 2026 18:14:53 GMT
# ARGS: version=21.0.11.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 22 Jun 2026 18:14:53 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:14:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 02 Jul 2026 06:38:59 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 02 Jul 2026 06:39:06 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 02 Jul 2026 06:39:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:39:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:39:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:39:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:39:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:39:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:39:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:39:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:39:06 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:39:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:39:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:39:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b30ecc040ec91b7e580ef7f93f591eaf80422b110a473c44b4d0dbcb2301395`  
		Last Modified: Wed, 17 Jun 2026 13:06:48 GMT  
		Size: 64.8 MB (64794736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9ab00298aadd58a3bb8cae018cd5b3d4b05bdf586ebc30fe105caf4842da84`  
		Last Modified: Mon, 22 Jun 2026 18:15:16 GMT  
		Size: 163.9 MB (163862118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880f4da9b8080fbc2552eda0eddb83f88584fca18b6bdccef9ca181c1b59eb02`  
		Last Modified: Thu, 02 Jul 2026 06:39:34 GMT  
		Size: 159.1 MB (159105417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c48545b4bcb827f8d605fa2211121bbf0241941ce1d5ef4173468e65805b9c`  
		Last Modified: Thu, 02 Jul 2026 06:39:31 GMT  
		Size: 31.2 MB (31196801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5674f2c1adaa3a4ac2197f129f312e16dd30df60757943f80f000933223774`  
		Last Modified: Thu, 02 Jul 2026 06:39:31 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ded66c748b40fb959167a8d0ff2047a6887a3f264cfecfe1eceebf1b63af67`  
		Last Modified: Thu, 02 Jul 2026 06:39:30 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dd7520f6838dcd1c42c60ef5e32b515566bf5391c819acc540a4a019ea953f5`  
		Last Modified: Thu, 02 Jul 2026 06:39:31 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:0b60c430eb5ced06db19131637403c10631ba44c1b1faf5ec3239a3d74163d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6946833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef6e34226aec785a819f19cbf2b206a2276dc1e0f12a83f247c52f53c7c4232`

```dockerfile
```

-	Layers:
	-	`sha256:204835cd83bd2e7c2357ebbefb7cf1f954daeca047c48b07cd6cbc08a50e95d9`  
		Last Modified: Thu, 02 Jul 2026 06:39:30 GMT  
		Size: 6.9 MB (6930467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e0c9b87220b2692570ef2a4ce83c229aced26c06ef6a6daac9fc6f04c70579a`  
		Last Modified: Thu, 02 Jul 2026 06:39:30 GMT  
		Size: 16.4 KB (16366 bytes)  
		MIME: application/vnd.in-toto+json
