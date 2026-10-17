## `clojure:temurin-27-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:f961726cdc932b1200679ef8a4015f521d896acb9907e2997564a9d1a2a6ef91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fea4caf028eaa4d94452cb63b5a93c396b338834b8622a8b98dd224b54c37b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146749677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3789c2d7a77c3e3f9092696f37476abb7ac739fb560ef1181bcbb9e26f658ecc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:54:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:54:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:54:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:54:46 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:54:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:54:46 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:56:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:56:08 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:56:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:56:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:10 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08081b07b18c446b74135ec74c113661ab4dc2192708977f1ada52d77a336c47`  
		Last Modified: Sat, 17 Oct 2026 01:56:30 GMT  
		Size: 93.6 MB (93622484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a90e66a0013041e8c49a4f7d3beefa08e5fa14bf61d8af2bdea04d73050417`  
		Last Modified: Sat, 17 Oct 2026 01:56:29 GMT  
		Size: 20.4 MB (20362255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ced28db8a4957b0e4409d998677263d16f5d305ab289287cbaa17bb9f7e476c`  
		Last Modified: Sat, 17 Oct 2026 01:56:28 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25bc4d08b38d38445503309c34239e71a7c637f5105132fa0d83c4433521c6d`  
		Last Modified: Sat, 17 Oct 2026 01:56:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cc6985b4355e2523be81954b2e51ee480ac41511e43995615fc9c2332058ab7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2719008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e184361dec839a3a57565f2005ddcb5ae3ba3ce1be7d0fb6250d2dfa24436f2`

```dockerfile
```

-	Layers:
	-	`sha256:2cdcfb06c511f13536211c00127b056ac838a4dab381b8ce699c2eadc92a9951`  
		Last Modified: Sat, 17 Oct 2026 01:56:28 GMT  
		Size: 2.7 MB (2701242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd7c0ac177ac7497b52f42ba05873eaa92919c7bfd99df55ff383db993143e4c`  
		Last Modified: Sat, 17 Oct 2026 01:56:28 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:55e609525b86d9fe8770109790024459a567988b95f66a98319c13b5a1807add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145442868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c531227e676930abf6b2fd21e6c5925f73c8ef8e8f2de2f75ac1d9e1d455f1b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:54:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:54:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:54:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:54:51 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:54:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:54:51 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:56:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:56:10 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:56:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:56:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:12 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786a194acccb31558e5b87b123764de9fb9fd61ff1a424db059049150df8ce0`  
		Last Modified: Sat, 17 Oct 2026 01:56:32 GMT  
		Size: 92.6 MB (92633121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b07ce542650a3d9d272f365ef6cffbd9662e2a43ca2db5b7daaa3c8b6c42025`  
		Last Modified: Sat, 17 Oct 2026 01:56:31 GMT  
		Size: 20.2 MB (20156955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:986b89c0c7db869e2ea9cca5e417962da679ad57a625a7564687155633d57954`  
		Last Modified: Sat, 17 Oct 2026 01:56:30 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0878e86fd80741e62b8bf7f044e5528b171545a0d492b844709fbb0a5ebb89`  
		Last Modified: Sat, 17 Oct 2026 01:56:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7dfc3df838b6a6b4e12da9aa95f504f9de9c3a5d5a5e4626a093c3fbb5c32fc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40fae0212c164516c1490a4641be50ce94be733e8686f160f156f8e91049ee1e`

```dockerfile
```

-	Layers:
	-	`sha256:8545c137b6de0022cffa634214d0ba0257e32df196cf9602ff5acd33f9e228c1`  
		Last Modified: Sat, 17 Oct 2026 01:56:30 GMT  
		Size: 2.7 MB (2700854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f07f377decd4c1de357644f5b9dc87e76ee57a7ff8d4ff3f725a4c5be22f577a`  
		Last Modified: Sat, 17 Oct 2026 01:56:30 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7c9e609c307144d47ae9360c478727b0ca5fbe5f22da5f3958ec8f314c96744c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149599447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb851bc48a372db2ca789c16c434e336f7af4f6a7facbfaaf386b05f8f97cfa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:20:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:20:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:20:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:20:58 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:20:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:20:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:23:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:23:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:23:58 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:24:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:24:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:24:03 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:24:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeb2b8835072278f513221af23f0b3665df65ecdfdf91aec3478ef9ec12499d`  
		Last Modified: Mon, 12 Oct 2026 18:24:41 GMT  
		Size: 92.3 MB (92255814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d44901dc1f5b5bf4aba32592ff5af9c4c3ac8f111dc3d2e10a40e0e7b785875`  
		Last Modified: Mon, 12 Oct 2026 18:24:39 GMT  
		Size: 20.7 MB (20735553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067b6bd262322c2df890563bd15c874d120b374d5772160362043d46e7d89a23`  
		Last Modified: Mon, 12 Oct 2026 18:24:38 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0662d159649fc2078fcd74a999d9ff2916d1a5d19b0c7188b64e4bea07e26998`  
		Last Modified: Mon, 12 Oct 2026 18:24:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ef4ef146055af457690715f58fbb199c1874044b8ac9837f2518aab00915cfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc15c9a57cf4efe05d58dfebf6206c93f3af76526eb4f0219f49c273d95b5592`

```dockerfile
```

-	Layers:
	-	`sha256:e95ae502616e4f28460be9868562ab77fc0609f05e2ea56a2b2815f69af75da2`  
		Last Modified: Mon, 12 Oct 2026 18:24:38 GMT  
		Size: 2.7 MB (2687011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:668d35dfd8b9b0f48366222b86cca341037518b8af334c47a860095eed904f77`  
		Last Modified: Mon, 12 Oct 2026 18:24:38 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
