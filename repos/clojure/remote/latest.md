## `clojure:latest`

```console
$ docker pull clojure@sha256:77dfea50160d66c3bc23e471eb73d4cbae230f08cfe9b99811752c07c89d66bd
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
$ docker pull clojure@sha256:9d7cb76bdbd79e97b22baa8f3e4609a9c53fa59170265d5db83db6deced57b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233920695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437e428ef859225ffc384f2bd02bd56746a81ec9f09ff10e369ee9d4363f1c0e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:05 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:47:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:47:05 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:48:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:48:13 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:48:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:48:14 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:48:14 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:48:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:48:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:48:26 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:48:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98277db2f505c111d039cb946e53873aaf3dd47722b752b9dfd667d740eb4321`  
		Last Modified: Thu, 02 Jul 2026 05:48:51 GMT  
		Size: 92.6 MB (92574598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a656c21fdc1bd5900aa51f250fa579571dd03e8b22ab9ffbae64ed387eae813`  
		Last Modified: Thu, 02 Jul 2026 05:48:48 GMT  
		Size: 20.1 MB (20117498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c29fe686e816ed96e6957fd7b1d5878d3178c03f5c28843d243029d2f3d561`  
		Last Modified: Thu, 02 Jul 2026 05:48:47 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625d497295e870eab09c4de52757e17757c0e193d88b2de1c6ad6a844b8bac8`  
		Last Modified: Thu, 02 Jul 2026 05:48:51 GMT  
		Size: 68.2 MB (68210119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc60fbeec27562b8fb9b5c36b245f827106d22ea24c31bdfc6e1c6de3383d40`  
		Last Modified: Thu, 02 Jul 2026 05:48:49 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09498485192950c837649ef04200b0039fc07fd7647da4832292990d32e5419f`  
		Last Modified: Thu, 02 Jul 2026 05:48:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:f86df154c0078049fcdb50a601102633560985ae42f9a3c13aa8850f4cf00bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4941c18d0e70b3a759457454946a67189291ff399bdfa5230a017ccaabfc30`

```dockerfile
```

-	Layers:
	-	`sha256:ed790fc2fd833f736d8c4779c5a12bed988895a923d6d89e1db0a526b64ca08f`  
		Last Modified: Thu, 02 Jul 2026 05:48:47 GMT  
		Size: 7.4 MB (7435911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a90fc34bf9795457fba705bc41736538562c666582f90222fc69ec3e3c1c0bd`  
		Last Modified: Thu, 02 Jul 2026 05:48:46 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:486b550e20afc58b755b3bf7e50e6bf1f41badd141e152d419f95c2faa3b5aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232742381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e052087bdba1e51f9197763fe89d5baa07623bd9a3b0019a784288dd9c21f76c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:47:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:47:29 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:48:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:48:36 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:48:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:48:38 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:48:38 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:48:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:48:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:48:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:48:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21ac30a0660152b52783a4488bf2cd5fa7cdae1692c6e8895d53b3b99a4a6c6`  
		Last Modified: Thu, 02 Jul 2026 05:49:14 GMT  
		Size: 91.5 MB (91542235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311f4690fc5d57242a6858d601a98500deb46d1887f475e25a0c49c1f54fad3d`  
		Last Modified: Thu, 02 Jul 2026 05:49:12 GMT  
		Size: 19.9 MB (19940557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a2e79a434c0cc12a3c30df2e76f62b5b9b0e5ee412de01d0b477ed5c828400`  
		Last Modified: Thu, 02 Jul 2026 05:49:11 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cab755fb79c55aad39407fbfed70e0f219d9b17544edb5462ae772e0fdde571`  
		Last Modified: Thu, 02 Jul 2026 05:49:14 GMT  
		Size: 68.4 MB (68354078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6adf434f010abbfc0c8b0480346a9c49dcd7b9356dd07e2938db2515d38aea`  
		Last Modified: Thu, 02 Jul 2026 05:49:12 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff5f960a07f130484244b9610d0c9514c998b530152f4c4da2c76a3998dbdd5`  
		Last Modified: Thu, 02 Jul 2026 05:49:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:86141cc8e254cd0a014e46258fe9abda7aca0e1f9b5051524bc90fad16f3aa10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e296d1c6f7b134e78d7da7653ca10138079c9ee7026643a739492624e2c72f`

```dockerfile
```

-	Layers:
	-	`sha256:c680019c13c6a8aac0444fc8f7f4ce0534e9d27e869fdda554f7d243e6c74d87`  
		Last Modified: Thu, 02 Jul 2026 05:49:11 GMT  
		Size: 7.4 MB (7441647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9138be7d993f46341eecdd3fc79e0d108417adf1fc8d462822840c80ede6956`  
		Last Modified: Thu, 02 Jul 2026 05:49:10 GMT  
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
$ docker pull clojure@sha256:e6f9af0975f2ba23193dd082378e1cdc48d43f5ba4db4b982b98f9b12ac55280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227210703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0183b404ec9bc4219dae10a8c9609e31a32770a6780a17673b9d1dc1251a3caa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:43:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:16 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:43:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:43:16 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:44:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:44:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:44:35 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:44:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:44:37 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:44:37 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:44:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:44:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:44:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:44:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:44:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52593cd68da36f0e7d499121bcaba3a32b90e573cbfe4a9c3b97923edc6220a`  
		Last Modified: Thu, 02 Jul 2026 05:45:18 GMT  
		Size: 88.4 MB (88420325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f722dc36656b6c01d8d66566cd7b893235c5646fbd17dcffcaca7d82c721d0`  
		Last Modified: Thu, 02 Jul 2026 05:45:16 GMT  
		Size: 19.8 MB (19770358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556a9a8a647256fa69196d554d161ce348ac12c77ca61c4759c2d4626e738ea5`  
		Last Modified: Thu, 02 Jul 2026 05:45:16 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85f231367fcc1ff65ee80a7a49f86064d7f172e3028e1944e0063b3358cad91`  
		Last Modified: Thu, 02 Jul 2026 05:45:18 GMT  
		Size: 67.3 MB (67342078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ecc2d21c7bacbcdac822d8fea83d3b29b84074305ab5ea09bd1fab24b00372`  
		Last Modified: Thu, 02 Jul 2026 05:45:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bacf6873e29b5b8fddefdb589bb4a0606a55165ad57422edf5bb4d5085c5dfc`  
		Last Modified: Thu, 02 Jul 2026 05:45:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:9bca750b4ecfaf3e0fd6a8ec45ca3dd94e08ef273cd7b27a855cc66af5351322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7436767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd109f3e1ef89e6ff596b2446a001d7e63e225396c0c1aaa2022cab152a8a2f`

```dockerfile
```

-	Layers:
	-	`sha256:b8348c79cdd50caaab147d79f3792969b886a240fa63f9f0df1c68c0fb8dae62`  
		Last Modified: Thu, 02 Jul 2026 05:45:16 GMT  
		Size: 7.4 MB (7411792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ffc8df274c7e209ed4a278df24fd0d69c2e7a58303785a0fa239ad9ee012bcc`  
		Last Modified: Thu, 02 Jul 2026 05:45:16 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json
