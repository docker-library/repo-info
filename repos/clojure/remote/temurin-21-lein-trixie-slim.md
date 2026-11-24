## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:6878bf43a82ce3bff6c7a94ca6cbcdbafcae42361fc5e7cc62126ce407887de1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a75bd3a4f6af6124eeca671b9960cbea98690e49867c5295c23ff0c515c171c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209540149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83320a9e45fb91e42d9b47034626169d91dcc082ee3e68d2edb65b41efade6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 04:40:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 04:40:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:40:53 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 04:40:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:11:16 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:12:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:12:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:12:34 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:12:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:12:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:12:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:12:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5262a92f8f3868a23db3195d248c9e383e27ee0177a9c892e5cb9199fc9552bf`  
		Last Modified: Tue, 24 Nov 2026 04:41:53 GMT  
		Size: 158.4 MB (158440950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d733a5a997dd173a1c86085476583267ef28a01c89115ad57fb6a2cb92ae31`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 16.7 MB (16740906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b429450efc6d9cf22bdd3f395aedc55efacb8c5cb59adf91257dcd9b714a11`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa33412f153907345d7f9ad76e7f4f77defad478219c1368fc9823155a280c5`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:af0115f3a94860c927ff5e949968eba1bc68b6ef94d44df4597cf4caef21578f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280a2c687bf1680814a16c9a35d04c9aca20e868746bea07b577b535eec26b9c`

```dockerfile
```

-	Layers:
	-	`sha256:9fd9ab5badf25c88b47ac50c8e39b1f181a6137ab8f17a7f1f9abd908690c776`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 2.4 MB (2373634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74d35ac5156582c7a9c112825882748d45a1e74497f75b1736e754dcf8169942`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 17.4 KB (17394 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b2b398df582c4526d3736614dc77789c6b11e4a665fd5f9e2a1b17272a580849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208129708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9396c559668f202088aeb636147dc27675c7bc38ec392d835053cc223a09e574`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:04:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:59 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:04:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:04:59 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:06:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:06:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:06:19 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:06:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:06:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:06:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:06:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3658acdb7deafb1ebf695bf78ecd2b3833aab54d0d4d50b2808f9a5db87843`  
		Last Modified: Thu, 12 Nov 2026 01:06:43 GMT  
		Size: 156.7 MB (156691653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cd49a3c4692b7ed485d0f88af32db6dff576615882996d07a95f4f2bec11dd`  
		Last Modified: Thu, 12 Nov 2026 01:06:41 GMT  
		Size: 16.7 MB (16707871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d22b9779274638f8e651616b35584c108bcfa1e91d68d4f3ae27dcc887f36e`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4cb8e575ced568217a05e5641bfc1c9bc089cb47c2bdd1b23d2f9d7f43d822`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:63d444e251b0ec00c112911f218d5f68134efdbbc3b6fe4f64e1f3e8c380d9bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc56662c3f3f1e1cbc18045efdcc15f7aabc5210da7af8897e507ebf0bece88e`

```dockerfile
```

-	Layers:
	-	`sha256:d00bfbf0a08a4cc4582109ca3081fdb2552145f77b0f2a8c5973d6e1359988ea`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 2.4 MB (2373208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8335bd34dfd4476a3124c797cda68c03fa4904610a64fc7f629aa7f9346f8152`  
		Last Modified: Thu, 12 Nov 2026 01:06:39 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c3b632433bc8038e3b55bb9ade4b053cc1279e3e8f4c092b0c4e835e539363d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212544636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b044b29d634e6f23edd2d976250a596e8f84bc36893853e7dc2db44503050a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:49:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:49:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:49:21 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:49:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:49:22 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:52:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:52:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:52:48 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:52:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:52:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:52:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:52:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12647cb1982acab35a32331eceb3b091af09b3fb9e99410816786802b8882a0b`  
		Last Modified: Tue, 24 Nov 2026 12:53:40 GMT  
		Size: 157.6 MB (157596453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a269aeb8fb928e15357a23d5125878775bdb85a7bc91e14f9e2f7f9e112592`  
		Last Modified: Tue, 24 Nov 2026 12:53:37 GMT  
		Size: 16.8 MB (16779392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c82eea374a9ca5ded5da8b70b1f3605eca071dc441d6ecdc54bfde63473dd0`  
		Last Modified: Tue, 24 Nov 2026 12:53:36 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9607438ed1be0babda760431dafe1805497f35259db0f6b315be2af2aa140913`  
		Last Modified: Tue, 24 Nov 2026 12:53:36 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0718871509f20138bf0e8a507e51fc57efb5d89b3416398452843629abcf6fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cea009ad03a8483032a4b799614e322e5030876881aafb676ce8e5454c4496`

```dockerfile
```

-	Layers:
	-	`sha256:ccd2afbc445f4add88155fa7cd0c525375a0d33b98c428d9220b295c6e9d38a2`  
		Last Modified: Tue, 24 Nov 2026 12:53:36 GMT  
		Size: 2.4 MB (2373368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75428c3d90bab43e59e80db18b3388a112220208eb64600de1eda5ba1cdabf76`  
		Last Modified: Tue, 24 Nov 2026 12:53:36 GMT  
		Size: 18.4 KB (18393 bytes)  
		MIME: application/vnd.in-toto+json
