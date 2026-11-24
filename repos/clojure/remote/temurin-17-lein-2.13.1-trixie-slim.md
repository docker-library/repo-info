## `clojure:temurin-17-lein-2.13.1-trixie-slim`

```console
$ docker pull clojure@sha256:8fed70abb51e48ff8d28a3a9cb2c8eb60173664614a40e738842819718e8d324
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
$ docker pull clojure@sha256:fd84abbbe1b9c0908eba4045bfb85367f8a864639cb72618fde226ab0d803a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.1 MB (203068353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2c4e25f1b970a686abb8497aacccd743c6e562f505578018a4fa1db55d0327`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:21:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:21:32 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:21:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:21:33 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:18:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:18:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:18:56 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:19:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:19:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:19:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:19:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8414bae47d7405a7372988f6ef49623a98c61807e361f6a8999b8be82a0cc3`  
		Last Modified: Fri, 20 Nov 2026 19:25:35 GMT  
		Size: 144.9 MB (144892672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3768c4f263637e1764e9a5479cb405683503baac2cb6d8d4f35a7461c66d3e0`  
		Last Modified: Tue, 24 Nov 2026 00:19:22 GMT  
		Size: 20.0 MB (19991911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4340c146f646a919aa1d4925ade3398bfbe1bb8a52caaa3ae8a6d3f93352989e`  
		Last Modified: Tue, 24 Nov 2026 00:19:21 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c64d25f1fc49c534269379983ed4874d70414aebb79e873d4f858a9827fcc9`  
		Last Modified: Tue, 24 Nov 2026 00:19:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8639b2d5f5cf7ba210bd1af2413cb21e6b1689a8c3566a478eb4fb278507fd74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c176c09b92ea3d9192c499d7fb77ae2a498677e5300b42135bde81ee3b398d0`

```dockerfile
```

-	Layers:
	-	`sha256:60b72da003ff479b1f6a4a121df6c569cc838e0a6c5562232852b102dde1cded`  
		Last Modified: Tue, 24 Nov 2026 00:19:21 GMT  
		Size: 2.4 MB (2371488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b3b5072cb8c634f58aac0762fa042da15bea6175e7ba2d3bf0a96cf1e4a7e3a`  
		Last Modified: Tue, 24 Nov 2026 00:19:21 GMT  
		Size: 18.4 KB (18393 bytes)  
		MIME: application/vnd.in-toto+json
