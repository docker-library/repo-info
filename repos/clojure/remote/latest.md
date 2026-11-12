## `clojure:latest`

```console
$ docker pull clojure@sha256:0e24f4d9e29a5c6ea144dff744f5b66adda21fb141d17817e3b92468de891eed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:8c0d028607855ad04c86ebaf0c2cc39970182c01c36934345e5d11db76491f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237864606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d38c2e3f865938016610554f923412a8eeadd2ba98e6dd130926c2d5e10d38`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:45:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:45:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:45:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:45:16 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:45:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:45:16 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:46:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:46:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:46:28 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:46:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:46:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:46:30 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:46:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:46:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:46:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:46:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:46:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7151b242b5bfa65c4f04ed579f89f57f093c358d73bd403fa7bb7e3e152c614`  
		Last Modified: Thu, 12 Nov 2026 00:47:05 GMT  
		Size: 92.6 MB (92598898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b38943749b63578c544033d43e846e47d23fa6bbd024ab8499b4c3ab325582a`  
		Last Modified: Thu, 12 Nov 2026 00:47:03 GMT  
		Size: 20.1 MB (20133091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf030a5f18319ab24101657d55f54691fe1ba897472f1b80308e8d15137dd2d`  
		Last Modified: Thu, 12 Nov 2026 00:47:02 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66162c62ed1915e2b9bc907140f05c55e18a66adec4bb2edc4bc9848b6f2f249`  
		Last Modified: Thu, 12 Nov 2026 00:47:05 GMT  
		Size: 72.1 MB (72089329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5298ceee4e50dae518f8cf778c9487d43dc46fa6b8e5aaded685e0ef39ef8a2c`  
		Last Modified: Thu, 12 Nov 2026 00:47:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9997f7e494b40b5f4791131f095808005fe1eb0ffb97f6cf6294a72069601f82`  
		Last Modified: Thu, 12 Nov 2026 00:47:04 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:a2bfbe52a171a368cb599773bc6b703186cb73ca684e6a59836326917f8f133b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fa70fefe26d9ad3a8fe4b5d6f861f60362356ffaf2a38f41845ac3cb4c77b9`

```dockerfile
```

-	Layers:
	-	`sha256:76cb778946323803f4948ff067178c44409cb35573a8c628b408ff6bf0037ec7`  
		Last Modified: Thu, 12 Nov 2026 00:47:02 GMT  
		Size: 7.4 MB (7439681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83efca0478314c99ffa48a130c8fb65be1573530d7fd2ce9fc9360e735dc937`  
		Last Modified: Thu, 12 Nov 2026 00:47:01 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1fb0e924f39cc3eeae35d2da51d615b76e4cbb50d94c19f710acb3ff0fecbd7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236682300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d51bb3e7ca829868acbe2f0b40b1bfcb36ac7099e6a2965391de476e8cc3aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:00:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:00:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:00:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:00:21 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:00:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:00:21 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:01:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:01:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:01:39 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:01:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:01:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:01:41 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:01:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:01:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:01:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:01:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:01:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc86ecd0367eb8b64f2433731642d1378197fb4a642db98b36efaa5062f3d01`  
		Last Modified: Thu, 12 Nov 2026 01:02:18 GMT  
		Size: 91.5 MB (91525578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a047b50fda13f09cf4ff9f8da1cbca908583414f8b1ced88d890639268614994`  
		Last Modified: Thu, 12 Nov 2026 01:02:16 GMT  
		Size: 20.0 MB (19967167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f33e0ec24a143310202f22912b98805aa7c76a4f8b85c49b1ce5d9c0d72a6e8d`  
		Last Modified: Thu, 12 Nov 2026 01:02:15 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79c2efae223db850a8c979a5e576e31a9143919e5f4f4280f96e3c0fefef4cd`  
		Last Modified: Thu, 12 Nov 2026 01:02:18 GMT  
		Size: 72.3 MB (72260303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5aba08e107a174bead62f8e76f3a7a12135087bd912820a95fc1d194da1b74`  
		Last Modified: Thu, 12 Nov 2026 01:02:16 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668d632d82826ba895bf017c4bce6fb9ef682bdb96b372f3d8e27c919a6574c3`  
		Last Modified: Thu, 12 Nov 2026 01:02:17 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:bbdfef06e94eb8a0d981f648d9ab78eb14894fd8893f9fc4e1eb3c82bc4de29b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a18da6054570b676fee7707518db31ab028061aa0c12700150dd7e013c7bd7c`

```dockerfile
```

-	Layers:
	-	`sha256:c6c898df36770b3f6f630df6b1faedf5567764aff67641016de90b4178a88499`  
		Last Modified: Thu, 12 Nov 2026 01:02:15 GMT  
		Size: 7.4 MB (7445417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cff4e78819d6a3f8c0a08824135f38eafb4064a6cf0939e82316aa7fadab70a6`  
		Last Modified: Thu, 12 Nov 2026 01:02:14 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:3e558e870d4ece8bb75d64b2f2e18d367688ee3251ce75d60354435dabf5f3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245060093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c569c3fc8b0f8d74cb892858e70a915f0481d2d9610ebbd0f56483d25002fb44`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:18:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:18:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:18:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:18:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:18:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:18:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:22:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:22:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:22:08 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:22:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:22:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:22:13 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:22:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:22:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 01:48:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 01:48:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 01:48:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e811e2ed4773087153cb51d918d4412ad6aae87e34a833e2a78b59926760328`  
		Last Modified: Thu, 05 Nov 2026 15:23:45 GMT  
		Size: 90.1 MB (90111651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad066384a348f8a26f745f09feb2a1b1306991996b622986d9719e5da17aeccd`  
		Last Modified: Thu, 05 Nov 2026 15:23:42 GMT  
		Size: 20.4 MB (20357031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e1a6573c131c5c0ff9a1f6a8563f1143b169b0a7c838f9cc46ba57a2538316`  
		Last Modified: Thu, 05 Nov 2026 15:23:41 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd59468b2a5b09923230e43ce3f59d9011f61ee6d1198bb4793fdae1fdf3039`  
		Last Modified: Thu, 05 Nov 2026 15:23:44 GMT  
		Size: 77.7 MB (77705997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e4e0e45839882431bccf4bce8ac2839bb30f1b5d033b23c4b6624db33f7b3f`  
		Last Modified: Thu, 05 Nov 2026 15:23:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7ef8c4762afed8b6029eaea9dfde12a862c6e876f17c4571cac84054b0b989`  
		Last Modified: Tue, 10 Nov 2026 01:49:09 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:70cd63a3c0a50b6457dd400f228c3f3f102df79cfeb17143994c43583642d3d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e8855890138ef53ad55fafba0d766d5540b00bdd6db5e7c2089306926fe47f`

```dockerfile
```

-	Layers:
	-	`sha256:9d9cec742d627e367a112eb07d0996bd27c255be6025b33579475b769255eb82`  
		Last Modified: Thu, 12 Nov 2026 07:35:52 GMT  
		Size: 7.4 MB (7426332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bdd079f07780951f8c466d5eb3f1bd81fb4bd1ef63d4fbb7677fde85ef3fb83`  
		Last Modified: Thu, 12 Nov 2026 07:35:52 GMT  
		Size: 25.0 KB (25013 bytes)  
		MIME: application/vnd.in-toto+json
