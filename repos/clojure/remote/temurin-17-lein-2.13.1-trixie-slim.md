## `clojure:temurin-17-lein-2.13.1-trixie-slim`

```console
$ docker pull clojure@sha256:da348663a2c28bedb93499088b8ec110f91e6588756e241f37d3942c49345a43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.1-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c5867f69ee36a76169450bd7ca3db1d35b33b2e3af5afc7391856d1a1517e436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197213586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169d2d3b66345c87e67733eebea14bee43e843dc060fd52482803a88b70884c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:10:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:10:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:10:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:10:30 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:10:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:10:30 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:11:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:11:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:11:51 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:11:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:11:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:11:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:11:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898b17e55b098f490cd3b6c5576937e31afd81ebd6caee3622e6e80038989a2a`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 146.1 MB (146114278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7670f862c54f9455c905053028cb370d187a08d5b16da8ea63402db81f271d6f`  
		Last Modified: Tue, 24 Nov 2026 05:12:09 GMT  
		Size: 16.7 MB (16741021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b0275c8fc5563a2ccdde8aad56de04c0cc32bec7f842fa5b7e2b7594185b13`  
		Last Modified: Tue, 24 Nov 2026 05:12:09 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9808b85646b21e3671800f5895332732f0eb80aacfa96453d5967b5fb0270d`  
		Last Modified: Tue, 24 Nov 2026 05:12:09 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2c10d3d3b8da4c350234f173f77d99b6a21f38dcb25595b7dbe6e85a38fe5dee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea5ac31a90c0efa7a8bd63eafa481f1ad864ea9ffe3f1bb2727b18171a23dc4`

```dockerfile
```

-	Layers:
	-	`sha256:da3551e74546e3634d6688ca2ed0c2b8fa42b1fcd61bd6b5e33d25d748e4b805`  
		Last Modified: Tue, 24 Nov 2026 05:12:08 GMT  
		Size: 2.4 MB (2371782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17f5b7634649ee4782b76b69dfc2732a2ca46ebb933f4c1fcbe095e3ccdf480b`  
		Last Modified: Tue, 24 Nov 2026 05:12:08 GMT  
		Size: 18.3 KB (18349 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.1-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0c82ba78fcf0c076f8caa0a3214ad2d0bfd6b8b69731e0654e462c5a172b7b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199840512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb7495f4db9bd4747885ba472a2eb8f1378d72cc41eeadf568f66deb4ba2d60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:37:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:37:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:37:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:37:50 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:37:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:37:50 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:40:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:40:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:40:58 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:41:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:41:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:41:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:41:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c422294a623f32f12aa30ca0a4f258e649f6491ebb3fb2a6b000cc057097bd`  
		Last Modified: Tue, 24 Nov 2026 12:41:47 GMT  
		Size: 144.9 MB (144892689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e07eb4015ef3859fe35077bff64a658b48bb3e86e348fe153a20e9eb8e973f1`  
		Last Modified: Tue, 24 Nov 2026 12:41:44 GMT  
		Size: 16.8 MB (16779023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e343de7d7c02a2464fa05116c8a50edcba4d002789123a551b134780f2f3f30`  
		Last Modified: Tue, 24 Nov 2026 12:41:43 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbe35bb5c017685a84f76d1ad1a1121f4245402d3c0abf01245d1f3790a7142`  
		Last Modified: Tue, 24 Nov 2026 12:41:43 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ddfd6409a9986aa0f6c78f3fd1115871fe9c7cbd01b5cb6886bb8050705a982b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c2c95fa10bf977cc47c7731295d0aa28206f712542752b88f2850602c9b9b7`

```dockerfile
```

-	Layers:
	-	`sha256:cfe6ee589f4b673404d0b9dc2be69213f9cbcc3aea771d796b89b3fe8d0ed0fb`  
		Last Modified: Tue, 24 Nov 2026 12:41:43 GMT  
		Size: 2.4 MB (2371516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71140067a483154c6e083d0ed379719832381796051b25526ea932568f077a3`  
		Last Modified: Tue, 24 Nov 2026 12:41:43 GMT  
		Size: 18.4 KB (18393 bytes)  
		MIME: application/vnd.in-toto+json
