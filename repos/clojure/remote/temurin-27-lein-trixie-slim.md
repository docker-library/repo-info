## `clojure:temurin-27-lein-trixie-slim`

```console
$ docker pull clojure@sha256:cacd57597740d481585c24350d135f697a83eb1a18f89d2e9f88ca031f39a3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f9bcb5e2bc53717dfbc5eb2011ded953bdafdd22edbead3fe7c1d5bea198b7f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144762644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a71ccb8f7339ed97cf49bb02bf9c0d4091f8b0de1b49e47b95b044416a1193`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:12:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:12:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:12:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:12:06 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:12:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:12:06 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:13:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:13:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:13:18 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:13:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:13:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:13:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:13:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f96e3356631fd18207681be2cfd9f6800c1955f60d552b7e963793bdcf0f3305`  
		Last Modified: Fri, 20 Nov 2026 18:13:38 GMT  
		Size: 93.6 MB (93649657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c0ff00b687be1a0169f9be705f3ad9baa1bf1d2ac5604b987d1aba93c14c59`  
		Last Modified: Fri, 20 Nov 2026 18:13:36 GMT  
		Size: 16.7 MB (16740714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3391a79e09794f46c44a21746bf4590ed0aa4acbf3fc9c631e08ebf320b8cd00`  
		Last Modified: Fri, 20 Nov 2026 18:13:35 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a73c27c925d182708169a1e3cb4cbc0857312ca488bf75a25003db8581a2bf`  
		Last Modified: Fri, 20 Nov 2026 18:13:35 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5971921f35707c53b3e056526b6ab2f884196b5eb3b721134ea0ae6468971c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbdb90322eacde165efbba1a1e13b33b41190f4e1098f7ec119714973033bcb6`

```dockerfile
```

-	Layers:
	-	`sha256:1b38655a6d1a0fc872ba0ac1a4c25376cc9e98975ae31ccbeab95432be2b7b5f`  
		Last Modified: Fri, 20 Nov 2026 18:13:35 GMT  
		Size: 2.3 MB (2335400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dc63143c924419e01fb9f649ca6b11058e53c92de18f1067e8212668347279e`  
		Last Modified: Fri, 20 Nov 2026 18:13:35 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1d27c8a01c200db30b893568168d444b5ce72464e876d77575cb8068985fc378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144098785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13de1bcac95b4fdd915bad8300271bf2a33f74d0078d93c2c66dd8a471a581fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:08:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:08:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:08:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:08:02 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:09:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:09:21 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:09:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:09:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:09:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:09:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab5cf37c25e913233ccdc55444cd0d91515947a5136238374febff83d218213`  
		Last Modified: Thu, 12 Nov 2026 01:09:42 GMT  
		Size: 92.7 MB (92660462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b32f53ba3b615d67a4134c4e6d6d9b62058bcb16bf1cf34ba8873589df0e7de`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 16.7 MB (16708148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8431d7f3c4716e7c30e8c9ee8ad7c62bdb25aa87fe5e57ec31913f5663a74458`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb85cdcbcc180edf47576cafd8d2c19e4403e0522089a44fc3e48d3b60f0773`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6cfd0866f7df1303dc88ef5e0140ed008c9b61ec186161f1eec3af374d413018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e602b34e52b8d1efa18736b2da47371e97d724a08b397d49a1e741ac09f1a2ad`

```dockerfile
```

-	Layers:
	-	`sha256:81c682a033105d0a36a59ad13b147676cfb7add4eef8543d5ab70aad71759228`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 2.3 MB (2335015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def058f740f25d220d87bbd194ed5b807ce9a44f2064fdc04e3cda0388e63ea9`  
		Last Modified: Thu, 12 Nov 2026 01:09:39 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:031c509587a40a7b141e3a8c7a1cda88e36cadd2bf94b4349f73951ae8d142a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146895829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9683ef56b8060ef94e3cbfad7c1800b9892eb33935cd6978e75e8439d9cb9163`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 20:06:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 20:06:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 20:06:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 20:06:18 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 20:06:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 20:06:18 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 20:09:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 20:09:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 20:09:31 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 20:09:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 20:09:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 20:09:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 20:09:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313234a8502e59652a776296191b1755855d823324e0df0c18a0106e7dc23485`  
		Last Modified: Fri, 20 Nov 2026 20:10:12 GMT  
		Size: 91.9 MB (91933337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16691f67bd525cc992f4026defb69a67dd62b37e37e499b679a600c04e99156`  
		Last Modified: Fri, 20 Nov 2026 20:10:10 GMT  
		Size: 16.8 MB (16778689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15aa54dcb6bcfc34c0a8947d4d8a7502ef3e141ac8b303b704afa6096edae25`  
		Last Modified: Fri, 20 Nov 2026 20:10:10 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7014a0581f319ddf847fe2da65af7010a17332e59ee1326a461ed99e87bd889d`  
		Last Modified: Fri, 20 Nov 2026 20:10:09 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:80f3f50e50cf752204137aa980cd7fec608e45366772f7a0c511b3aa80664c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2336245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7492bc6bbc448e286a1fd84a1cc1e1280087fad7d8bc7561ace8cba6cb67f0a3`

```dockerfile
```

-	Layers:
	-	`sha256:4481c616689a5e42c21f1b8712fe7a201758a33a98002546ae5d7bf184a5faf0`  
		Last Modified: Fri, 20 Nov 2026 20:10:09 GMT  
		Size: 2.3 MB (2318455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc92e394845798347eac1a81f93315e3ce5e46710bc1faace1d9c2c06a8aa86`  
		Last Modified: Fri, 20 Nov 2026 20:10:09 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
