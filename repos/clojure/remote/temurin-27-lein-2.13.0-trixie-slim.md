## `clojure:temurin-27-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:5bb536a4b57e6e4165f50910bb8b682516fc4f61f82d1bf8c8e6dec958e8fb65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:83d929b1d39001ac280600658dff56e4e1c024ec83dd627efcef55f660c2fef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144725349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62088715609841fc11c09ee7df72267e1da8ced2558c048db08f8315293a4dcc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:27:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:27:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:27:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:27:54 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:27:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:27:54 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:29:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:29:16 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:29:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:29:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:17 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19591d0e123be299c9b9576ccbc8f22f27a345f6960332966da21781958ed655`  
		Last Modified: Mon, 12 Oct 2026 18:29:36 GMT  
		Size: 93.6 MB (93622457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a86c24c133b384345ce59a591a4208e7e9b9c07f341947ad24e0d5c7a9cbb38`  
		Last Modified: Mon, 12 Oct 2026 18:29:34 GMT  
		Size: 16.7 MB (16743942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32304a082d73ef7a574a4c0650f7f7193a206cae1cc55bd90a636fdb0640ca28`  
		Last Modified: Mon, 12 Oct 2026 18:29:34 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919e32af98cec0d5b18118f66ab37053ea238438b4af7286b60b199bc0783a6c`  
		Last Modified: Mon, 12 Oct 2026 18:29:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:79bf763147e804b5a08adf3818c63e031b512ecc52645a8fc01c13c3cf2c4fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2354401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388f75feca6a6af83d80a1ba4d2e96a627aaa68551dc9b1d2c675e4acce6f8dd`

```dockerfile
```

-	Layers:
	-	`sha256:fd570af1a41414645fed31f8dd3724022b7e4b30f2ae31244f5be08c45d37728`  
		Last Modified: Mon, 12 Oct 2026 18:29:34 GMT  
		Size: 2.3 MB (2336655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c87a9f4e8fb70382ca430ed8be4a453138cdcb3fda6f05412ef356a7c25af60f`  
		Last Modified: Mon, 12 Oct 2026 18:29:33 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:761468d484a4943573ee8bad71dea83e5902f568ea80ce9bc6f1dfd61986041a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144061069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fb763376b5ad83613ff693769a1e1f9e380714050e79aa5bf4ddf1ac196615`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:29:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:29:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:29:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:29:51 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:29:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:29:51 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:31:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:31:15 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:31:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:31:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:17 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2a785128be0aea7374782a7449324410bf69541dc25ae621027e26eff09967`  
		Last Modified: Mon, 12 Oct 2026 18:31:35 GMT  
		Size: 92.6 MB (92633135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be30e83f48d5fc570529cbc1a0bfc5a52325aaff07370605c6f173cac12a165c`  
		Last Modified: Mon, 12 Oct 2026 18:31:33 GMT  
		Size: 16.7 MB (16712014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd64247f68f47aadd8bdd7d8fd0f53219c3095feac14ab7e10bba8afe27eaff1`  
		Last Modified: Mon, 12 Oct 2026 18:31:33 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6065818ad193cb10795fb91566d30374969e478573a0ecb77358b760d101e6ec`  
		Last Modified: Mon, 12 Oct 2026 18:31:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:97435a83403e4925486bbd0683cf09c34f39e6900dc9be253f80241c08085b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2354129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:833ad65bf33eb50d21335c93199879e7fe16ad17da9f266071e6e612d0a2ad39`

```dockerfile
```

-	Layers:
	-	`sha256:2dd400646e5974c5dfce88c6d49af46aaeadd0a6f36a2b5ef0808ae03f15662f`  
		Last Modified: Mon, 12 Oct 2026 18:31:33 GMT  
		Size: 2.3 MB (2336262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:282693a880aa00494e98759718021033058a6ae2bf25e3e9d6f29f1aae1c02a1`  
		Last Modified: Mon, 12 Oct 2026 18:31:32 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c2b6968e054b618232dcb9a8589d52b612cbf80025771454dd7166c61f01eefc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147205437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea0396c9202d3187286da12a10e4a5408ac6e54a1e8131857768791f66e246b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:26:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:26:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:26:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:26:49 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:26:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:26:50 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:29:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:29:40 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:29:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:29:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:44 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdce8a835ada47fbe2d55146ce5d81230200596d54ec78f2c40d279d127e7d3b`  
		Last Modified: Mon, 12 Oct 2026 18:30:33 GMT  
		Size: 92.3 MB (92255828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a018a0d0e90e962117c31c87a4b68952c7cbcafdc6771b3a4caf6e2d1bc17f00`  
		Last Modified: Mon, 12 Oct 2026 18:30:30 GMT  
		Size: 16.8 MB (16782379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57b2e413dde8986e38ad895f6b1be505f1a7a393a8984353a35e41de59d725c`  
		Last Modified: Mon, 12 Oct 2026 18:30:30 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850762356eede72b78167e28478de728e14e023eeb82ceb879ec1ee38569e764`  
		Last Modified: Mon, 12 Oct 2026 18:30:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb98d0bf8d3fe79bc6b7f7f5f70f794fdb5e5dfe20eff64f75ec0b7b80147075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2339361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b352cabe5f13bfa9f86293fb09fdcfc83355a54eaf21700d7e43256b97c3d6ac`

```dockerfile
```

-	Layers:
	-	`sha256:53ad22ec563138edb9b6c8e862156af20c814cf54155b518a0f6059778c9dd8b`  
		Last Modified: Mon, 12 Oct 2026 18:30:30 GMT  
		Size: 2.3 MB (2321571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ecfb7869110a8e2702c5293d9bfe359e010fb3bbe71cfe224ba27c3e23540ef`  
		Last Modified: Mon, 12 Oct 2026 18:30:29 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
