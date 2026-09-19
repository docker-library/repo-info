## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:cbfdce99f58fd8c73edf20afe958a7815713c866e53524c922300736ade0808f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:42468e96ec6f77ef89dd53205160ff2512699da0d199db6bd43a2928ad0eff8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218975165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74f32aa4809521dd75e4e0918dbb36beac6540c7ef199cefb406739f0758029`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:14:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:36 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:14:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:14:36 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:15:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:15:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:15:44 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:15:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:15:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:15:45 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:15:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142600c48bfb3194c8d74e8b9337b12208053ca75e6b6cb13b0922932a20dc47`  
		Last Modified: Sat, 19 Sep 2026 01:16:06 GMT  
		Size: 145.8 MB (145822675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77b5fb4248af2b13ecb0af3c90ffbd6e1e1e9bab5ee75a046e8f08dfecd2939`  
		Last Modified: Sat, 19 Sep 2026 01:16:03 GMT  
		Size: 20.1 MB (20133418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd440fd30e1151d37fccf2e9e70d71392db95b309e5c582b7d4b1526a17a4c0e`  
		Last Modified: Sat, 19 Sep 2026 01:16:02 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a2c35dba6ca93576e0daeb5d885a3e4a4e866990d762959b600d634741a1bb`  
		Last Modified: Sat, 19 Sep 2026 01:16:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:35ffbe5ef8b60fbc0782f149689b5214f7d2ad6cef542091615908330b3c6901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b988aeb9e765904fe25c027e0b114af734d18659f0f54e1dc506ffc93aff51c1`

```dockerfile
```

-	Layers:
	-	`sha256:a49f7034760264188958b8041c3ad457b8df431dbd5cdcd0335034c34a7f1049`  
		Last Modified: Sat, 19 Sep 2026 01:16:02 GMT  
		Size: 4.3 MB (4289291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a694396b23c39965d3f1bb341c8ed5031ae632094946357f27201a495d94f23f`  
		Last Modified: Sat, 19 Sep 2026 01:16:01 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:613c498649929cbacb0b66952891e7fca61e6d6033fcf37218b54a2c5bcfecfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217509189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f60d255c75dbc32ffe7b70a45fd637eb5cc2a15a06d96bfe79bb77bad6c00d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:21:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:21:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:21:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:21:27 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:21:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:21:27 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:22:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:22:34 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:22:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:22:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:22:35 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:22:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa55001a71da7a937f85ba668dad86877c7ea0e3ecdc2c1c1947b35946a5bb74`  
		Last Modified: Sat, 19 Sep 2026 01:22:56 GMT  
		Size: 144.6 MB (144647468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e329ea8891c0bd3ec4da2642c1119b31feeda033ffaf6fd406105a59339e0f`  
		Last Modified: Sat, 19 Sep 2026 01:22:54 GMT  
		Size: 20.0 MB (19956213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe568a9adb5918f2305dfb53c27e12225b5549dd9453b584eec92d9efd161ef`  
		Last Modified: Sat, 19 Sep 2026 01:22:53 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a94904d3a39c024d3324c559ef4738c86b94971a0f628c3b6b7d61f02b57ca2`  
		Last Modified: Sat, 19 Sep 2026 01:22:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:87643170048d20b3c8d39ac8594d7d1c3a5f3d08a888209808fe2a3fb8b6af9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcea252a83462cd48c65b3ef03a03a072fad189ceaef7edd4ede0e8a24a6a32`

```dockerfile
```

-	Layers:
	-	`sha256:17431d6d822a2162f16add12794687e70e93329eed8a4141c5baaf923537fd06`  
		Last Modified: Sat, 19 Sep 2026 01:22:53 GMT  
		Size: 4.3 MB (4288906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43a9d9dff9d5390c4cf40be74212a5042d177c8b1baf35071157ef3a2165734a`  
		Last Modified: Sat, 19 Sep 2026 01:22:53 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3e0b608d80f26183917397817ae8f7dfb8367adba52cab69db028f7212ff501e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222880031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58bcb689d4b9ce3c4b76c84fe3de28ae2a5eff77f163f4b12c3ae6d7e7d9b564`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:36:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:36:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:36:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:36:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:36:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:36:07 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:39:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:39:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:39:36 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:39:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:39:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:39:42 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:39:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1af52d1f120ab866cd01f53f55536432689f0a99bbf598990aa772fac79142`  
		Last Modified: Wed, 16 Sep 2026 10:40:17 GMT  
		Size: 145.7 MB (145674262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4290ce10a1854835aa0d8ea441cf0d918638043a6fd270d85c93d58b96d1aa`  
		Last Modified: Wed, 16 Sep 2026 10:40:14 GMT  
		Size: 20.3 MB (20348385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9dbc33cc679f0b05ea6b698cae2e9f1eb5f1dbf6cdce0ab8f5d8a98edbbb7d`  
		Last Modified: Wed, 16 Sep 2026 10:40:14 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d64da4c0819e67eb9b9f45fbcf9345f40cea62886d60ae24c0236ef5e2ff32e`  
		Last Modified: Wed, 16 Sep 2026 10:40:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4d2f00f32ba60839d4350a9a5c6494d80a903aceb1a4d2f7dee40d4509688e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8970fda205ab0216d46a0612863b7ba08fdc1bfada3f37368f8fd8018047fb1`

```dockerfile
```

-	Layers:
	-	`sha256:a4785968d2c7d137b5bf25b670e79fa16f407251b830a078993f6e901ad4528b`  
		Last Modified: Wed, 16 Sep 2026 10:40:14 GMT  
		Size: 4.3 MB (4291116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:015d15e941f2c3d1345d6ddbee9f8931c915c5219a402b97a98e854e9d030d1f`  
		Last Modified: Wed, 16 Sep 2026 10:40:13 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json
