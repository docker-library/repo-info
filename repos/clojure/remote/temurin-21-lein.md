## `clojure:temurin-21-lein`

```console
$ docker pull clojure@sha256:c58a347cbd8f1d9a3808da0e2d3995c14e4403bc5300e1b003d60465458fba94
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein` - linux; amd64

```console
$ docker pull clojure@sha256:cc944483e1bf269cec63e51f0cd6af89ae98a3a72b9c2f6a24cc616e0d9d5e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231584428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec37fcaf9ded49ebb13f204b74fd0aba1a18ad210af26007d250cf985a4ad85`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:09:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:09:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:09:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:09:27 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:09:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:09:27 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:10:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:10:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:10:30 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:10:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:10:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:10:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:10:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5cf6c654d3d316b160a126d3fe4c38ef8b38ac735bbc5f4647888d98d675c2f`  
		Last Modified: Thu, 05 Nov 2026 08:10:52 GMT  
		Size: 158.4 MB (158409443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6b369f46177a256cc49dadfde7c9dd0254c0c71d24355099f36ca23c0ac1ee`  
		Last Modified: Thu, 05 Nov 2026 08:10:49 GMT  
		Size: 20.1 MB (20132854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae608804ba6cf7fa94724b22568d03092d8cf3cc488877cf510f29126d592da`  
		Last Modified: Thu, 05 Nov 2026 08:10:49 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5ebd5d14505ae651ea3ea5f0795ad81984cd9203641a2688e7f0e246195b89`  
		Last Modified: Thu, 05 Nov 2026 08:10:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:ed67aa549edcbad42984e2de86d01803522100644154ba6f0938cdf7a086a656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964844a0d93ca6e9b6d022fb13f2e02240d17cf0880b9dc5af3ef4f595d440b8`

```dockerfile
```

-	Layers:
	-	`sha256:93eee67084d9352bd69bbcd017b0a174e97e4e655b4fb6a561d5525155b90edf`  
		Last Modified: Thu, 05 Nov 2026 08:10:49 GMT  
		Size: 4.3 MB (4290498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4299fd217f2b9361a259008a049ec8778f95c64b9bf676fb3fea12c207927bfc`  
		Last Modified: Thu, 05 Nov 2026 08:10:49 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e2271a2d7b11fd49f5a500af45f6e0489f8136633eaa274e71f1ce7a7c4e3b75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229586800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa1b41451c7dc538dc65ea58be38a4e31731b4ee7d5ff61e1a7aac47625ec26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:18:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:18:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:18:36 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:18:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:18:37 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:19:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:19:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:19:47 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:19:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:19:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:19:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:19:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7391fb8b9552cd04dcad9538948991b705d9ae530b46756e17b30fc32f33eedc`  
		Last Modified: Thu, 05 Nov 2026 08:20:14 GMT  
		Size: 156.7 MB (156691637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abd55efd8a6693b8621d72c79703f3d5fa8dd979a564d31754fb442f997e46b`  
		Last Modified: Thu, 05 Nov 2026 08:20:11 GMT  
		Size: 20.0 MB (19967070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f13deaf102ee5871cd0902ba5b3e2f7d47989a4eead6be367a5ff5b80cc6ccb`  
		Last Modified: Thu, 05 Nov 2026 08:20:10 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc9e62f3f945a158f3c3ec48daf33fdd6f2c93930b8aa57f90b3cdad230496c`  
		Last Modified: Thu, 05 Nov 2026 08:20:10 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:fc475a1dd1cefa87b7efaf2fe627233b615029a6faa218ae142221d6b4a993c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31d80db14d322bb74a0a55db0fca0538a057535d97041369439929a4d01d328`

```dockerfile
```

-	Layers:
	-	`sha256:497b9923d74271850f2ac68c26061f87e2ed0e1dc4b3c2d1f21b2d23169615f6`  
		Last Modified: Thu, 05 Nov 2026 08:20:10 GMT  
		Size: 4.3 MB (4290137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0b2327146c7c0dbf7e111a9b8e25a3a4e02c517ed113d5669316ad85a01b818`  
		Last Modified: Thu, 05 Nov 2026 08:20:10 GMT  
		Size: 18.5 KB (18532 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:da2f56893c1bbfdb95545f494a2c07c4a7e17c3b05f0f19c81b09916315ee4ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234812036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca497ed9fcab26e4db280b17132bdec99d0de0b7e0c6059eb8d92e14ab97dc8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 19:33:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:33:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:33:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:33:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 19:33:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 19:33:03 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:36:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 19:36:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 19:36:52 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 19:36:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 19:36:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:36:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:36:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd62d1477bebca3ace751fc4e8b6b753721df1a40d39f3e494d07c626de119f9`  
		Last Modified: Thu, 29 Oct 2026 19:37:39 GMT  
		Size: 157.6 MB (157573286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b309eaace8feb886e6e9df76654aaa30dcb3c107e16ebb79cd1660318171d89`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 20.4 MB (20356804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d775c64b56f2c7987fc6e6eb7fb2708d9fdad2454e5726e3293a72e8ac69962`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6d4d294030b7271375c441ac0674663ede9e881c98d04bb72c36649a81c560`  
		Last Modified: Thu, 29 Oct 2026 19:37:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:44baa0b54293b910f131eca96e7faf5fb0991fc30e9438ba3b4dbfd16d45dc40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95f4c98b5139386bfedbee210aa42f0319eee02045fb93c6e18c79686fbda2b`

```dockerfile
```

-	Layers:
	-	`sha256:0be46cf3099f82562f89e384013e197e4d2a1117a913301e3193633d2583532a`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 4.3 MB (4291125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:323cf203affb8c34da7434cc0e5b0f1d95f61a8706f2fa4bd4576092f2a2eab2`  
		Last Modified: Thu, 29 Oct 2026 19:37:34 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
