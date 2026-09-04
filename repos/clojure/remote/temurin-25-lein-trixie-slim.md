## `clojure:temurin-25-lein-trixie-slim`

```console
$ docker pull clojure@sha256:8b5e9c42d2b893b108b17228476a786443b5d36ca5f86b44a29b480363052de6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:514e91b0f29a6a033077491c1af607af5c6cbd3d1cdba1030ee773ac42eed84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143667117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633fe2dda84133bbef59d7b7f27422589cf1beea269500cf2f9f46acb9118103`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:31:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:31:07 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:22 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:32:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:32:22 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:32:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc78858088d33b2ff1537eeec83495a08c6d45e4212a2eb26314db16b930afbd`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 92.6 MB (92615118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852a2ef6ff33e204a4c823f6ef6f1e6110114e48583dde9bbd4112fcbe190be3`  
		Last Modified: Tue, 25 Aug 2026 01:32:40 GMT  
		Size: 16.7 MB (16743747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0ed600e72829b728b13bceee880bc9fe03af1ba39cbd6f9f591127b9318eba`  
		Last Modified: Tue, 25 Aug 2026 01:32:39 GMT  
		Size: 4.5 MB (4515164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ac0fcf947242087e03431613dca13dcc6964b98a0578eac985e7383b824b6a`  
		Last Modified: Tue, 25 Aug 2026 01:32:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:12f7e1203512f9903b7c31c0445524c5110cc322fc56fd449883b414502a9357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7762399ed68b7c5b2ccd6f82beb68e56476777025353c29352409b7b608c3654`

```dockerfile
```

-	Layers:
	-	`sha256:85bf4fe1ab7ed97886d0fd483f8d4e47604134e6c12300bad4557555800becd7`  
		Last Modified: Tue, 25 Aug 2026 01:32:39 GMT  
		Size: 2.3 MB (2335363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f8f12bf7a576e408d4f33d2c9dd1a2b15ea87441268d3045ba51c7188fb19f`  
		Last Modified: Tue, 25 Aug 2026 01:32:39 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4c27fff5a028003d1da8de55f89f77fc47a89aa340f1ac5415a10a84fccdbe88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142918939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ccdceecf75d4df93d30e0e1e97d677839ead9918ff82c292d083dc74c7c58c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 00:54:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 00:54:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:54:59 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 00:54:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:35:21 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:36:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:36:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:36:38 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:36:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:36:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:36:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:36:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8afc68b3132df5abf9eeb314bf13267b2e6ff7f404c0a61ed45d1ba02f34d2`  
		Last Modified: Tue, 25 Aug 2026 00:55:48 GMT  
		Size: 91.5 MB (91532208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367614b19e425079acc25b378365d2df5e25dcdb0f65b147ea131a2fff079cfd`  
		Last Modified: Tue, 25 Aug 2026 01:36:48 GMT  
		Size: 16.7 MB (16711544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6205610377a6a73a521b23e443e73b106d50507add43d4e7baed3222b612cabe`  
		Last Modified: Tue, 25 Aug 2026 01:36:48 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd82b91d008106d6b54dbd2f89d46b004892f8b94a3e0faa33d9dd343dcf4f5b`  
		Last Modified: Tue, 25 Aug 2026 01:36:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b38bfed0d93db844931b7fa06068659822a64179fe45160d8b8885a1bc78b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296809dc7fd4b8c21a4959790cfb84a2696bd147559019258486f1bace3ebac8`

```dockerfile
```

-	Layers:
	-	`sha256:74cc192040d6bb36461e17614f5ee48d20eacd7995ea2f80d42ca388019aeafb`  
		Last Modified: Tue, 25 Aug 2026 01:36:48 GMT  
		Size: 2.3 MB (2334994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:224c8c95dc5f8d1e1644e3ef61e2eb23b6015b17268f55cddaa3208f5fddc2e4`  
		Last Modified: Tue, 25 Aug 2026 01:36:48 GMT  
		Size: 17.6 KB (17592 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:30459863832e5feabd068c3d2977e58964b8fcef71d8c76ad748f94363ddbeba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146169378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcff0f017d4c62c5798ca3fa230ab0afbd6f22c53aca2eeae2f0c721709c082`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:46:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:46:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:46:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:46:02 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:46:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:46:02 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:48:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:48:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:48:54 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:48:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:48:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:48:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:48:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd316f1d386d891f8b8f4839d7a7b0fd7682b3d7f8eae8e5d9c5cc93d5cccbd`  
		Last Modified: Tue, 25 Aug 2026 08:49:37 GMT  
		Size: 91.3 MB (91255838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab11440ef95e60c8481ce3b3278e43f56d313671116723a16d93a523c510dde`  
		Last Modified: Tue, 25 Aug 2026 08:49:35 GMT  
		Size: 16.8 MB (16782456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb6ce5907b9f6682814f58986ac43f8f78a903f24983208266d4153c10da54a`  
		Last Modified: Tue, 25 Aug 2026 08:49:35 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e69d69ab8d33f4d8d04c4db766db3e8019ab81118bb82769f102e828196147`  
		Last Modified: Tue, 25 Aug 2026 08:49:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a0926b1e9c58dcb437565dc87e41b9dbb957f8bbf3fa7510ad3f058e38e467eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445b9d455f7c8733fd6780227d37f70aff0ee7dcfaf7ce4e5ee371a5de25fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:dc386104a6be78a35b85f1af6d6ff3273d3f68b71d701e22da5328ca2e883470`  
		Last Modified: Tue, 25 Aug 2026 08:49:35 GMT  
		Size: 2.3 MB (2319667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4d41a5d3649077e9d574bb334d2f5a5151d33402f9c0a44663453d0bb4af199`  
		Last Modified: Tue, 25 Aug 2026 08:49:34 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
