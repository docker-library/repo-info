## `clojure:temurin-26-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:fb61a5821f570a49f5b64a8e9e51f45353332b422dd7215c0c73b3dd98a320f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4449e655263d177c6f5e5a31d813b0ac5361b714ca467aadbde1e0c27e3bd5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145399664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be00080278ae909e7d759cd4fe8563e4ee5c2ad2fda8ee459850512831ef45b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:52:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:52:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:52:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:52:14 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:52:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:52:14 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:53:24 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:53:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:53:24 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:53:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:53:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:53:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:53:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0584cff7b874849f736900a29ce9471b6e201b4e1c9df5a100912a48411e252`  
		Last Modified: Tue, 27 Oct 2026 00:53:44 GMT  
		Size: 94.6 MB (94563505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd226c405f6bfef2fd81a065f902a532fd85c9e99e6ba9f057dddc0633f499c`  
		Last Modified: Tue, 27 Oct 2026 00:53:42 GMT  
		Size: 18.1 MB (18072618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed36e770d72d45f1c64f0433ba03d2b7b18b4fd1f84cb14db4bcf4bc2c09eb36`  
		Last Modified: Tue, 27 Oct 2026 00:53:42 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50403928b13be015ff1769734a11e384cf8ad79836a99612791050c8a263982c`  
		Last Modified: Tue, 27 Oct 2026 00:53:42 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4c4bbbfe1a05b04acfdbe4b3f6f448acdd2c25bb1eb69013c6e287cb33597738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:859d94f41e897887a36a2d9c381ee83486ea78c4ed7bd86340f2f2478008515c`

```dockerfile
```

-	Layers:
	-	`sha256:6d2a943d81c3c0b63f45478e755c9878a0ac084d64db5be83da5b3ec819806a3`  
		Last Modified: Tue, 27 Oct 2026 00:53:42 GMT  
		Size: 2.7 MB (2701216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f40e253be26a4a5e45f5eb9b7a52b3b34c8588127cf6ede6fdaf1115280d95d`  
		Last Modified: Tue, 27 Oct 2026 00:53:42 GMT  
		Size: 17.8 KB (17765 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7780550059f5a34fc8d38d6127c0ac08a978248e7ae991cac38c4fe3cf3fb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144113945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4eb90f94607c093f4bcd506810b67b4895e5d1debe03f3399c2778dba04d062`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:52:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:52:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:52:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:52:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:52:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:52:20 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:53:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:53:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:53:31 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:53:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:53:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:53:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:53:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3163d39bc98aa758d9597bea3958ea3313e4b16a1636bf3ad80d69cfbbfcd564`  
		Last Modified: Tue, 27 Oct 2026 00:53:52 GMT  
		Size: 93.5 MB (93543598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdc3c194a816a51569607dc5368868b198c8462c79829d71ffec0a1699ebb9e`  
		Last Modified: Tue, 27 Oct 2026 00:53:51 GMT  
		Size: 17.9 MB (17916278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf593bff587da1411d6787bbdd1075b5099befacafa1246191e14c13f0956c70`  
		Last Modified: Tue, 27 Oct 2026 00:53:50 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eecb5195cbba29f4a47f6618a81eaa5a5d9b1929edb288dd5ae7158282b956`  
		Last Modified: Tue, 27 Oct 2026 00:53:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f060ecd94ff09b7ead95fefe76f98eead6d1c994c3efc357c1902c9104c0a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b093dd2b6945012b3c8c2d0670e72c4a21bbe71c0da9cf7bb1994b872b43df`

```dockerfile
```

-	Layers:
	-	`sha256:146b7a8b8806e91424aab2fe5468031ef0553007cd41f36056aefe1b66368056`  
		Last Modified: Tue, 27 Oct 2026 00:53:50 GMT  
		Size: 2.7 MB (2700828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:854b3182308a42bce8739f84988f8102871a8d3e664ee62154941cc0d9e009eb`  
		Last Modified: Tue, 27 Oct 2026 00:53:49 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ec89f24f2eb208b41fb9698e334b3ea1df52d7365976bbcfeeb8a7205b6ca4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148239094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561b409001bfd357f66c8312b8eb01a7e81a694757484a3538d8605ce3b2031b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:03:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:03:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:03:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:03:28 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:03:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:03:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:07:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:07:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:07:02 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:07:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:07:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:07:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:07:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b181dc2a83b940d69077a6cc6b9a90c0ff198e7ef6de7740dd65912334038feb`  
		Last Modified: Wed, 21 Oct 2026 11:07:50 GMT  
		Size: 93.4 MB (93350847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97b699d276d94d4bd3202486c2a336d61897626dc0c185802739579655a1845d`  
		Last Modified: Wed, 21 Oct 2026 11:07:48 GMT  
		Size: 18.3 MB (18279395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b948c92b7701c4ae9cbcc39246d450f5e123ea83e90c42757845e3c08266ffce`  
		Last Modified: Wed, 21 Oct 2026 11:07:47 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e7b2c8d6c4ca3ab6e4a1f1cb08184995b84b5a8c9f0265b4142a5ac9ee6a08`  
		Last Modified: Wed, 21 Oct 2026 11:07:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b510ed1d4a3b81b94c08a680f33fd1cdfc7c4393236cc4ced8a0afbd0dabccdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35634253dd9c5d25e0a47fa6feee58573eab5141c32cb78c3dba9287b9c73bca`

```dockerfile
```

-	Layers:
	-	`sha256:0498fa9c4099220b12f6dc32c2208ce956fef95b99d84b2b415d91e46a611639`  
		Last Modified: Wed, 21 Oct 2026 11:07:47 GMT  
		Size: 2.7 MB (2686985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e86de779b78d280c636e5fd7394a45eda85dac7a06677e0842786f0a986f7c5d`  
		Last Modified: Wed, 21 Oct 2026 11:07:47 GMT  
		Size: 17.8 KB (17809 bytes)  
		MIME: application/vnd.in-toto+json
