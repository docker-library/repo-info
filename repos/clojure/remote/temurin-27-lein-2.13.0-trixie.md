## `clojure:temurin-27-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:6b635b21ee92c28860f2f834c64f0e84576c127dc5fe5798cc74412c73e1ba32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:545c22d9ec8bed639f63518fd467b7c82f9e0525cdc788569f3aec685c352a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166418563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4d7d46976c51f27a63a41d35843c16037cc0a3817d55efb7e4a89844e4d228`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:55:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:04 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:55:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:55:04 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:56:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:56:27 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:56:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:56:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:29 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78959662d1c9270175266dbd32de30537303ec8c73a4dddbb5c8034b2f6592c9`  
		Last Modified: Sat, 17 Oct 2026 01:56:50 GMT  
		Size: 93.6 MB (93622445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed20a4d9dd652de32c99d9aaed703f4877b9ac91907baa2c01bd04174b182db3`  
		Last Modified: Sat, 17 Oct 2026 01:56:48 GMT  
		Size: 18.9 MB (18887270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e417c5e7a78a6d6eaad033305bd364831e9eb4ae1235c0832f9eed2a9d7ce76`  
		Last Modified: Sat, 17 Oct 2026 01:56:47 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45cdd5976f4bb2a7d9b758531119c9e10f48976a96618d18f971588f5658c5c`  
		Last Modified: Sat, 17 Oct 2026 01:56:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2681ac7e8d84fb9d9004d5e96742eadceb27c1f4483735a697a6332ac4363c7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b00a79eabba0291dda6e669067a889f9f272332781eb235dc723be95b58c49`

```dockerfile
```

-	Layers:
	-	`sha256:374b0a7a76c62fb23e4fe0e5b0aed71de98295f3f35ede5717cd877400407bfb`  
		Last Modified: Sat, 17 Oct 2026 01:56:47 GMT  
		Size: 3.8 MB (3791371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91170d733f35203a31cb14c4b4417fdd7a26daa2093b5c88a9ea8bc5bcfba679`  
		Last Modified: Sat, 17 Oct 2026 01:56:47 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c4777c002e593feb0e31850051aa4d5191fa0b78e44bc36371d6820173563f21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165755855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe09cfd35d2536a249b2c9242084d49bfcdd121ebf1c3935f2c579e6098e59d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:55:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:20 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:55:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:55:20 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:56:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:56:43 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:56:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:56:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:45 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d435136b292cafdc70f444936f3c5111d4685ddca7de83495aa04f01edc4e92e`  
		Last Modified: Sat, 17 Oct 2026 01:57:04 GMT  
		Size: 92.6 MB (92633100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5ac815493dc840dc5791f2ab74a01265ad0ba5bd5e9c7b3a8e67cbae0a02d6`  
		Last Modified: Sat, 17 Oct 2026 01:57:03 GMT  
		Size: 18.8 MB (18845993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd3e53e5fe062c9423a797494affc65be020536d3679c87a43ed847cb9dd9f1`  
		Last Modified: Sat, 17 Oct 2026 01:57:02 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6183bcfb7443d9887fb50bd7cf43921f454b510c6118cc8f470bbac4b218c334`  
		Last Modified: Sat, 17 Oct 2026 01:57:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:596a402b98726ead776f7667e001896d6af8dbec1e0234006c5518119cc5a054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a04e208957f50364cd18bda1343d25ab2b8857a3dbce015b4672c0c0550568ef`

```dockerfile
```

-	Layers:
	-	`sha256:dcc116c5d118ba96e0f6a5c0bb91aea8c143d14d549a3d7cbf67b77a6f64da84`  
		Last Modified: Sat, 17 Oct 2026 01:57:02 GMT  
		Size: 3.8 MB (3791608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a29bb8bab15cc032ab0932e0651e05b6297215745a8efa8386745cb2c593fbd`  
		Last Modified: Sat, 17 Oct 2026 01:57:02 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:379f95ec2bce8978216717cb1dc61c64a09d3af1655236b49c76e7d87e8f4d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168920532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6b9831756b127b64658535c5afa222f7c546fe370b13dffaa8320c61353edb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:24:57 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:24:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:24:57 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:29:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:29:08 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:29:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:29:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:16 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66789879b74ef4c50b963b364c5e07afd02510d614ef8efeba36872b53353679`  
		Last Modified: Mon, 12 Oct 2026 18:30:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aad93cae1fded95e82282b1af6b3e6b09ec126c505ea7a219cf24bba68940e1`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 18.9 MB (18941959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd903c7b4f5e02c80fa48ec6b8973d08b2a3ccc31726acc08d9f34014ced25e`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569e2917ad38a727450d9a3f8faea941e3b6083efd503a27f50709ea20858aed`  
		Last Modified: Mon, 12 Oct 2026 18:30:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6a51302d5b9465ac406684e2017f43f083b3c7023e013f65818518fe16748768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3794059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:178877219a92490251a9a79934535b8037eb7b5ef1b2f2d8019e23154399ddd1`

```dockerfile
```

-	Layers:
	-	`sha256:96737d2a1f155e123d353c3f4d74b1947f7c585273803db9114ecee10d9cd7f0`  
		Last Modified: Sat, 17 Oct 2026 06:54:07 GMT  
		Size: 3.8 MB (3776305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f0b5913395e78c0edaf50f697142697bac83d828018d7762d0f721d7402e1ac`  
		Last Modified: Sat, 17 Oct 2026 06:54:07 GMT  
		Size: 17.8 KB (17754 bytes)  
		MIME: application/vnd.in-toto+json
