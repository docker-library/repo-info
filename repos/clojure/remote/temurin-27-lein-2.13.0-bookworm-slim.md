## `clojure:temurin-27-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:e863f1bcd2cfc6a8595a60f50551568be0173a001f236f084a0ebcb9d57677e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:95be949f52fa2750276e132fa01973ce8cb37f549b00fbbad3bef78d4c367dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146749669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7478c8ce31c63ccecff2dc55fb277b420d118707e2c4ca3e8472da955927d051`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:26:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:26:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:26:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:26:07 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:26:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:26:07 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:27:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:27:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:27:26 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:27:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:27:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:27:27 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:27:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027e3a9d54c3d9a399e74e45acfdee7544b90b5b3abc93f81c414345419cb41e`  
		Last Modified: Mon, 12 Oct 2026 18:27:46 GMT  
		Size: 93.6 MB (93622457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1179088fe3f8629c104e41fd6bad1f3bc9d583de55f33eb6cca9687aceb3c0`  
		Last Modified: Mon, 12 Oct 2026 18:27:45 GMT  
		Size: 20.4 MB (20362276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b902201fa45dcf64db47a33844ee85ba25e4d4bd688e38941673792c93bb9d1b`  
		Last Modified: Mon, 12 Oct 2026 18:27:44 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ab43c6a16a4a3851bc820e91146c31af33ad4bc802e7afa986473a39f573c`  
		Last Modified: Mon, 12 Oct 2026 18:27:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0e6cfad84d547539f2eabe603ed572a09fe73ccd6dc1eb0871780ea343fb8a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2719007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c6cbe0debe106dc4067fcc0aa02d39f354a01737f47479e375fee965c074b5`

```dockerfile
```

-	Layers:
	-	`sha256:44d594f7b2dcc4bbd0eba89baf1bd9625e9aab5846e9cb1f3ef5527a6baf96bb`  
		Last Modified: Mon, 12 Oct 2026 18:27:44 GMT  
		Size: 2.7 MB (2701242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:367975c234b3f733ff2d8f1cf95155240d236f8ecd4117738106f0f152b1629a`  
		Last Modified: Mon, 12 Oct 2026 18:27:44 GMT  
		Size: 17.8 KB (17765 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9c5cfc6456db6fccf44d2740405752ea8db747d0978ea881eb35f277bf5a742d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145442617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981862446dfefec91b150fff8ee00d5de119577b3d88eb224882478dddee3cfc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:28:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:28:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:28:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:28:05 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:28:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:28:05 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:29:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:29:23 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:29:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:29:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:25 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096d43bdd09882dc05319ad363bb36f6f9a149fd1609096e5984139382430275`  
		Last Modified: Mon, 12 Oct 2026 18:29:43 GMT  
		Size: 92.6 MB (92633112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06c2220a466b4e3011730ea51074739990ea10e68f54470f8ac7c9f9940fe9b`  
		Last Modified: Mon, 12 Oct 2026 18:29:42 GMT  
		Size: 20.2 MB (20156683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910e668202f7ac1249e429d7f627c8147ffa05f1089abe9c84d63df9adfd9e8a`  
		Last Modified: Mon, 12 Oct 2026 18:29:41 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1689f1ac67962da14d86da7b089015e44299a7af30add59520ecaf8434296c57`  
		Last Modified: Mon, 12 Oct 2026 18:29:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8ed9c7f16d76adfae592dcaa1caf03c721b090149088664c1693839f3d024305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726f89ca5ebc6d4bd980efdc34bed8b7b0ddb7048d120a783d4a600b5af75718`

```dockerfile
```

-	Layers:
	-	`sha256:a06f4d50b1330b98b93d78a104f8da834ef407081577869529f661bd44202cc3`  
		Last Modified: Mon, 12 Oct 2026 18:29:41 GMT  
		Size: 2.7 MB (2700854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9ed85d13fa59e92cff8e3834da67ca8ab1068f27230132a997d2267062514bc`  
		Last Modified: Mon, 12 Oct 2026 18:29:41 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

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
