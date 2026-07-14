## `clojure:latest`

```console
$ docker pull clojure@sha256:998206a566162c37c5d3f6c9d6fe7a28463785d3831aec00654a0942b33480c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:641fa695cc05231832c2a18a64891bdb98c8e1026b81eb83ea84da7153da84ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233920764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b192335a79999c1f19c05c2e2f2e89514e5fbe9198a13c23251e885c889f42bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:15:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:15:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:15:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:02 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:15:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:15:02 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:16:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:16:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:16:08 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:16:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:16:10 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:16:10 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:16:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:16:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:16:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:16:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:16:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7186692e23fb7fc307cf974fc19bf0570c442a9ca5709635ce578e74323fc59`  
		Last Modified: Tue, 14 Jul 2026 02:16:48 GMT  
		Size: 92.6 MB (92574607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326b31ff227306d9d92c026891ef29724c821efe32907f12eea9765157655074`  
		Last Modified: Tue, 14 Jul 2026 02:16:46 GMT  
		Size: 20.1 MB (20118782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e689576e31ffc2a27ee1fcf9b8b09c054d91daa58a51486977cc6a498fc41dd`  
		Last Modified: Tue, 14 Jul 2026 02:16:45 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d05e6d381defb63812ea3eabdd8ad148485f48ef4c8e28fa9db730ffa2bdf8d`  
		Last Modified: Tue, 14 Jul 2026 02:16:48 GMT  
		Size: 68.2 MB (68213691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6fed7856027c7a876c5906a6e5a19450a7b40d2d4a41c6ff53b2b677924a53`  
		Last Modified: Tue, 14 Jul 2026 02:16:46 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8f98dff7eadde5630ee3e4be468a59bdf402353077a67020874741a3e42ad9`  
		Last Modified: Tue, 14 Jul 2026 02:16:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:5b7e6c580c9d4ffb1775e7b8f087a7a2db0557aa75b38f5a34bf07a2f5c4034d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02730013fc5b0e87009a9732ef3595c2f95b295638875b1576c9178eb042982f`

```dockerfile
```

-	Layers:
	-	`sha256:dc32b8c202058faac0634a2b82d00c6fc6a9883279ca158fc7ffff0749b7b0a0`  
		Last Modified: Tue, 14 Jul 2026 02:16:45 GMT  
		Size: 7.4 MB (7435947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:556c2cfaf097e2e95a30fd861610636420de8a0aa7aa6ef6749b9325d06fbd28`  
		Last Modified: Tue, 14 Jul 2026 02:16:44 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:07f8ac284db6a1fe765c2cc63660124930fa69534a71ca80a87db80d0fe7af17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232758694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946ae6ca601090b0bc5a12b44c3a6048b33f74f2fab04e024f2656766088a82d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:22:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:22:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:22:04 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:23:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:23:12 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:23:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:23:14 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:23:14 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:23:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:23:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:23:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:23:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3b4a2df7726be089975890a01060a6aa1b3e7d5c2c0f75422a0b2811bca2b1`  
		Last Modified: Tue, 14 Jul 2026 02:23:49 GMT  
		Size: 91.5 MB (91542268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc02613d4b1a52b6d4dce6c20f2e48b85303599c6f67f9eda895f0a5f50650a`  
		Last Modified: Tue, 14 Jul 2026 02:23:47 GMT  
		Size: 20.0 MB (19950731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b46a04e058e4778078abf350903b241a6bc274ea199a0df6cff8084f903a63`  
		Last Modified: Tue, 14 Jul 2026 02:23:46 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab852ff5d566cb650e4ae6edfaeb6ef79abab182107c84fda507cc7a5ed6e59`  
		Last Modified: Tue, 14 Jul 2026 02:23:49 GMT  
		Size: 68.4 MB (68365724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb4d57db2618b337a0a5638831a17a50b93de797c5ca386771773a04b6ffe05`  
		Last Modified: Tue, 14 Jul 2026 02:23:48 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f044dc0c0a2a7b17839cb61c6c4f145b6018dad877e40087af1a52383a7c5bd7`  
		Last Modified: Tue, 14 Jul 2026 02:23:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:34291ef02eb018f176cb66ae2cc6f741ca0c60e094bf665e657aa6d304e818ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3c9028d1959a63b345ddd607ab2f827a56a7f559fe3a7c13ce4536d0ad886d`

```dockerfile
```

-	Layers:
	-	`sha256:04109a8f4006e3b30da3d43268f7397eaf1624e0b83d30e0df49d15787211c59`  
		Last Modified: Tue, 14 Jul 2026 02:23:46 GMT  
		Size: 7.4 MB (7441683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8aa4cea7f801e0de19d2a372e2f84a87f0f12996162ff59bff489687b48a328d`  
		Last Modified: Tue, 14 Jul 2026 02:23:46 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:394dc1e27037670a772db277e90bae749fc72c35f045484d7d812d6937bd8d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242921056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea16f7dcb3db2fe55d9dc0c90009db10d508727450fb827d7b05a9220be333ee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:43:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:43:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:43:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:43:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:43:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:43:22 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:46:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:46:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:46:16 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:46:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:46:20 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:46:21 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:46:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:46:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:46:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:46:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:46:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1de9677813712ddada398d96870b701336e684bc5a28731b883aed48b1d31b`  
		Last Modified: Thu, 02 Jul 2026 06:47:39 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963784037ee750a7dfa2576133d5f7e57e56aeef0d7345ed19d3abda135d9cb9`  
		Last Modified: Thu, 02 Jul 2026 06:47:35 GMT  
		Size: 20.3 MB (20332041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6563e138138eac9cb737288bb0676aff81644cabb2f0815ae1acea418078382`  
		Last Modified: Thu, 02 Jul 2026 06:47:34 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94c5b918e2b15fcad94ded6d8d014ec1565ab7b47304e77f7fecb568cadf2d5`  
		Last Modified: Thu, 02 Jul 2026 06:47:38 GMT  
		Size: 73.8 MB (73811834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5166da5258fa71c37fafdf310305d28a53c00610bf6d13eb94c811b6bf307e3`  
		Last Modified: Thu, 02 Jul 2026 06:47:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc624706744e32de0d5a116d9321bb2d2c89e26d8fa604affe031c2464f27613`  
		Last Modified: Thu, 02 Jul 2026 06:47:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:9950995ec203b707bda324f2368a795e0fbf46e54b8a41ae0b8b1165b0859431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55bbc6a9f2716beebf43142a682bad14edd6ea9848e27ab37927d05017f72f76`

```dockerfile
```

-	Layers:
	-	`sha256:30538cbf1b8bff646b7819649761afe73cd25a5e8425c3a48c0a182fc4d2d133`  
		Last Modified: Thu, 02 Jul 2026 06:47:34 GMT  
		Size: 7.4 MB (7424427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5d1d99442f81d5d37dd0f09da93cb5dc713d9e8b3e2cb80a62122d118c9d1fd`  
		Last Modified: Thu, 02 Jul 2026 06:47:33 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; s390x

```console
$ docker pull clojure@sha256:736232f4d0318906ccd80b370b9d5dce11022e70a5a10997a507cac08432843a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227201656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302ecd76ed5b3c09e1dda3f42a801cdbef5b953cb5e7838a19015b62bf0f2cde`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:24:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:24:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:24:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:24:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:24:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:24:34 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:25:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:25:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:25:46 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:25:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:25:48 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:25:48 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:25:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:25:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:25:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:25:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:25:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c65f380ae18d77b1dc3bd2b392013426b17929af1216965dbc5bb8963851b0`  
		Last Modified: Tue, 14 Jul 2026 04:26:29 GMT  
		Size: 88.4 MB (88420356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f7e6b65ca5ccf4fbae83121cfde182f3c3e78f536f913fa15df1d84984e92d`  
		Last Modified: Tue, 14 Jul 2026 04:26:27 GMT  
		Size: 19.8 MB (19770177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945c8be06ce37187fc0ee382d50671ae12ba5e2ff4981db3964ae22ce75872fc`  
		Last Modified: Tue, 14 Jul 2026 04:26:27 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1460d0399713d79682cd595faa7047165ac47d3d9a899063d7587ba5a514745`  
		Last Modified: Tue, 14 Jul 2026 04:26:29 GMT  
		Size: 67.3 MB (67337546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f403bb43c09e5c3ed8ccd1b9620a7c221d68aff4f620f9b4e27e6ff69a5927ee`  
		Last Modified: Tue, 14 Jul 2026 04:26:28 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44efc616a1c8cdfeb0d8929ef15e679ab058e0c09b35b63afc59e0026e34bc6`  
		Last Modified: Tue, 14 Jul 2026 04:26:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:0f84addf071991015d98c89dd81e3d9014c5ddef25b34ff065167a59074c7500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7436802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47013de02f030264ef2606006a1a4df06391fc2fd9a5b3a326b026ea25cdfba`

```dockerfile
```

-	Layers:
	-	`sha256:f30c8d3489e8321350c0faba4419a6378a0ac41469449a54ee5fa113a6f90e2a`  
		Last Modified: Tue, 14 Jul 2026 04:26:27 GMT  
		Size: 7.4 MB (7411828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3d5d618c24dce86adb2863254459f63b34422a442bb1ccdafb0bf84fd4b3d70`  
		Last Modified: Tue, 14 Jul 2026 04:26:26 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json
