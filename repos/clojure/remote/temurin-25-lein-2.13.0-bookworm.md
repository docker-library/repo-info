## `clojure:temurin-25-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:58f6305bee3c2652aac8d6e17dabd82d9d883c320d8ea391620cf1213a2951cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:202f1eec63063973fa7863f690c522a3a8c1d62a81a38c50aaadb8397eba9604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165774469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4cb8877e4a7cc47276aa84aee979d70a2233e78883f729f9fa09d601532df2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:41:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:58 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:41:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:41:58 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:43:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:43:06 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:43:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:43:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9d06ea7fc22941a29496b336da8f2098b609378ac08f47c3b9a17cec382956`  
		Last Modified: Tue, 10 Nov 2026 00:43:26 GMT  
		Size: 92.6 MB (92598905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e1cc369c117ad8ccaa79a2bafe75d159b01be269756879e7d6c711af728ac6`  
		Last Modified: Tue, 10 Nov 2026 00:43:24 GMT  
		Size: 20.1 MB (20132936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16253fb04cbfd6be97716fa6da92f322f4b7c8149aa7af1f3e53aedb05a0ffa2`  
		Last Modified: Tue, 10 Nov 2026 00:43:24 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467d53772373a14d4d1fa0300d205c28923012af93543cdbd923bda587f2242b`  
		Last Modified: Tue, 10 Nov 2026 00:43:23 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6e691bb1989c0f0f04ba281a04fee49ff03ab89d7b0b2f70f3533d75e6bd2f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c938b779c309f38e069559e69e16c6e537fa4ed5919fe2bd1832b7f093f2f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:7f44e8ff31b58bb735616e13821fc5af7db29c7e0a9f391471d7d64e96683ec9`  
		Last Modified: Tue, 10 Nov 2026 00:43:24 GMT  
		Size: 4.3 MB (4257290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:235b8f55ff290bdf19f281e90c0b429105271670fb8807c0e1bf1b05628baadd`  
		Last Modified: Tue, 10 Nov 2026 00:43:23 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:552a0f4cb29eedf2e5a570da8035065e12172e0402f2a367f7f03e6c63ff4366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164421337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0420611c917b79e9b3a0209c87e8e181dbb807055730bf2e48e32c55fd982101`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:41:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:41:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:41:25 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:42:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:42:37 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:42:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:42:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53867a0e1b7b098bcb90d57583650b532945448f61ece49b2eb56be500d6d5e0`  
		Last Modified: Tue, 10 Nov 2026 00:42:57 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb81a4d92b30b3d2daad68cc13d66dca4acc9ea29fc9758c3ce9a14916d15c4`  
		Last Modified: Tue, 10 Nov 2026 00:42:55 GMT  
		Size: 20.0 MB (19967172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86ead0f938973128cd88a415683881451e70f4abfd9f8611774803368472985`  
		Last Modified: Tue, 10 Nov 2026 00:42:55 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb23fd17017121ff7475f1d833d18d646df8785a296e2eb3b856ad83992fc35e`  
		Last Modified: Tue, 10 Nov 2026 00:42:54 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:33489469bac4e183077dfbce6c60211b293838a8d96cb25ea0b3b952c11d7bc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fdd2740c94b22a8cb4a57d880a9dcdfe7a17335814cef3e1d845cdb85958b0e`

```dockerfile
```

-	Layers:
	-	`sha256:930a832f04904f791788c8b2a3fc580569379286d4a76a93071c9c4d29855cce`  
		Last Modified: Tue, 10 Nov 2026 00:42:55 GMT  
		Size: 4.3 MB (4256974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ee77602e4770cfd1b9f0d0ab5f7e73c9b9d995f9bf68816ae98b21516060c87`  
		Last Modified: Tue, 10 Nov 2026 00:42:54 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2697f87f82a4b6e5de2c497767b9adae4805ff7001dffb24f50a6b2da98cd032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167353447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32f8d65a80bef8d5779e1e15723ec496dfd93a779c8b8e2437a4d042eab85fd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Tue, 10 Nov 2026 02:44:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:44:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:44:21 GMT
CMD ["repl"]
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
	-	`sha256:234dfc11322ac11e13aed827212c03f643855d4a188df00f62b79bd70eed1739`  
		Last Modified: Tue, 10 Nov 2026 02:44:49 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d05b09e3cb3db46f93cd83452ab59c0d8c86c451153759a31816ecc8ff3fbdb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4260347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8403f5396314864340b64c6f6bad1ad51b8a18bd20288b87d807f693ce09ea14`

```dockerfile
```

-	Layers:
	-	`sha256:f27dd59b2030418161d2681592e4d056d84ac5334a03b3e60d10e671c862b6b3`  
		Last Modified: Tue, 10 Nov 2026 02:44:49 GMT  
		Size: 4.2 MB (4240638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fce72b895d22049edb608306edfaa94b1ac96d07b7f8b530755f3b30620e47e`  
		Last Modified: Tue, 10 Nov 2026 02:44:49 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
