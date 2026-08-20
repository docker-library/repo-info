## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:e9438518903e1c8b9360b240e67a4098a712c1743993420d696333a3d1689774
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

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:de0dd49caf03baad228b816e8bc412d148f57014b91486ddb170acf35ea0f3cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219041784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2e3eb622d7a7d3302c49ecf15811d079ddf94afeb7ed41a707fe0d11734665`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:43:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:43 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:43:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:43:43 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:44:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:44:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:44:53 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:44:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:44:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:44:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:44:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e436f088d44ff9374e530e6e5e5ef685a152d2acf1c0901990732fd18e2d90ce`  
		Last Modified: Tue, 18 Aug 2026 20:45:07 GMT  
		Size: 145.9 MB (145905460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa573202f0ec12828d2caadbde4e47fd835b4f8bb3832076892fa2c9dd250c9f`  
		Last Modified: Tue, 18 Aug 2026 20:45:12 GMT  
		Size: 20.1 MB (20123592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd3c50a4905f06a60282c119c115e57dbd3335fdf2f4fd110af9b63af96c894`  
		Last Modified: Tue, 18 Aug 2026 20:45:12 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d7b0595b17a4003b1d60f4aebb36d6ac9e495827e01137f441e619c536e08f`  
		Last Modified: Tue, 18 Aug 2026 20:45:12 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d431097def6ff05aea4e26ccf0a5fd994b30494dde141355615451b0c8fa3460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7e6a5b265f10c9effdb041be501c5dd2d9dc021c17d2dfc31d17b39cbe0b39`

```dockerfile
```

-	Layers:
	-	`sha256:bf8a633c51f208b755c55828d482cd49d18c050eda35d09672967e4ee5b87969`  
		Last Modified: Tue, 18 Aug 2026 20:45:12 GMT  
		Size: 4.3 MB (4289257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bac51c27847609f04314c44ea5c863d90a225639275310a35920708aedfb6dbf`  
		Last Modified: Tue, 18 Aug 2026 20:45:12 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ab67e5175cbcb78e14817db52fefa062f6ba6eff13d50438b717659911585d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217578870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409c4f80a05e338e8a55bc5c6c471b89739f8cd99023fde1f84490c77dd9ad57`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:43:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:44 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:43:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:43:44 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:44:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:44:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:44:49 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:44:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:44:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:44:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:44:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b7b33fe16f33cd926706e0c67de7c6c82cc3a890cc62354f44d60eb7c15a41`  
		Last Modified: Tue, 18 Aug 2026 20:45:12 GMT  
		Size: 144.7 MB (144724298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cd1d15a140377b340e376f7f7fcd1f7ccc1c841b2e780097bacb8eaef32a23`  
		Last Modified: Tue, 18 Aug 2026 20:45:10 GMT  
		Size: 20.0 MB (19955564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a111def8ea88d94e776f2a8cfc03542a5eb60766aba521e546d4290f7fa65bc3`  
		Last Modified: Tue, 18 Aug 2026 20:45:09 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c141a94ce4dc41126f58a5aeae3e79681b2e653bcef689cf8210545c7547bef8`  
		Last Modified: Tue, 18 Aug 2026 20:45:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:cbddb6ad5553d106bd7105e2ad011e747dac3695062bbc610c0e198db6b656a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f867c277db37a68ed64f52d0c003ffb4af68753abb2d266e8162a5a133417b6`

```dockerfile
```

-	Layers:
	-	`sha256:0a9d5343b5b8486df01fcaca1e7939922df6edad05faf07983acc1a7f9c2d665`  
		Last Modified: Tue, 18 Aug 2026 20:45:09 GMT  
		Size: 4.3 MB (4288872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74b48f0bc945cf3aeba7f7d38a24c9879c778535a0459d138b77dd6a16dbfad9`  
		Last Modified: Tue, 18 Aug 2026 20:45:09 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:1d8cbc741d6a31b86127791d1e6c68f4f6f1e41aacc54b77fc110881994dbfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.0 MB (222971439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e04d923410c627b4775c53d84d3c01930a79f72d1e1007862f78ddb13f48f7f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:04:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:04:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:04:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:04:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:04:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:04:55 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:07:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:07:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:07:28 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:07:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:07:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:07:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:07:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399431649866870af8d638fa471d6ac66e92bbee0bf25be0e4a8931487de1d23`  
		Last Modified: Thu, 20 Aug 2026 01:08:09 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4caa637db0afe403bf7c8d849eea34cb684233147b1c19a9190233bb1f3f6cb`  
		Last Modified: Thu, 20 Aug 2026 01:08:06 GMT  
		Size: 20.3 MB (20348122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373f1f89e22f1ae914a01babdb81b87f75f9f23b0fbc44b1dd4b0d175f71a18c`  
		Last Modified: Thu, 20 Aug 2026 01:08:05 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b15e8219f327a09e2bec608590e9e76622fbfe4617079fe6ae232d2885a739`  
		Last Modified: Thu, 20 Aug 2026 01:08:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:166c1a9d11226b9712b8966740d857355cb848d4c9c7822d286e01761c32392e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a25bd46bb2ff8283d4c783240389f5b635ee142a7a7db1ad097c084dccb112`

```dockerfile
```

-	Layers:
	-	`sha256:415cc046e895bf5af0257811693c2affc768d65036d1f0b50c90f0d339e427a7`  
		Last Modified: Thu, 20 Aug 2026 01:08:05 GMT  
		Size: 4.3 MB (4291118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840d607d02e5457af8ac55ce3810ba7016ce2edb29c6c9cf1d04d1f204fe2bd2`  
		Last Modified: Thu, 20 Aug 2026 01:08:05 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:463d2f5b68cb936c5c2573e66c83868638ae01db26f23e758208965d8d769361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207353250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8dba5ab5e0fd9c53b63ad2a79b15f2ae7037f5a392fef8b66db22909b64cd5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:52:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:52:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:52:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:53:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:53:45 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:53:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309965fd29815352376730fa95c4d849749c698da80d21a83af566516fa3898d`  
		Last Modified: Tue, 04 Aug 2026 02:54:13 GMT  
		Size: 135.9 MB (135910420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5d1f6475473e300348805cfabe690c122627ef0440ee655ecb4a14b7f07122`  
		Last Modified: Tue, 04 Aug 2026 02:54:11 GMT  
		Size: 19.8 MB (19769924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aba123444d6e3877902fc32684f0d657439937021ae9ba18bb173688baf60d7`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95338122a9b1d364e1084dae83b24895ef156f4d40be011a5afceca627eebf48`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:104ebc38021d804ecd1f93c120d76d63b1b02af7cbb5ceacaa070fc44dc98998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4293606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3442c7eef5bb39cbe6390ca4baa6b521b397585872446d088ecc18829bc440`

```dockerfile
```

-	Layers:
	-	`sha256:3cad48098292d4af8d035bf5f8d8353141f93a0b5da5cf8eca9d13220757c639`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 4.3 MB (4275868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6b05deaa80ccdaa6b3b99b07f791192930ec46f46c4c67d4de6c6d148d3f8e`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json
