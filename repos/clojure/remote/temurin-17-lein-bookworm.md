## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:27bf05891a25e2d06e29c5699584b6345e4de6d66cfbdb21ad07a0f038f0f961
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:97fcde966f39e214d6bd4f6c88d68a64c366ae17644fa843c47df3fe823f5211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218969222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0668439a29df930f20121de9c3cab56cee316d415e0a667f3c6f81eeda714633`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:33:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:33 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:33:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:33:33 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:34:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:34:42 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:34:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:34:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:34:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:34:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da806dfb20114dc8a2090fdb4ca39a3a735b82f9334245f641b812ba73ab2f3f`  
		Last Modified: Wed, 16 Sep 2026 04:35:05 GMT  
		Size: 145.8 MB (145822694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52bee2afacb68c5a55c66902cb00dfa939915ad2f635e954efb4ca5657416e75`  
		Last Modified: Wed, 16 Sep 2026 04:35:02 GMT  
		Size: 20.1 MB (20133555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013ce5cd5b00bc92521dc288be166201b3e24bc8c6cd637200e32ff1d66cc2d2`  
		Last Modified: Wed, 16 Sep 2026 04:35:02 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71c1c79c0a9f13d6f94e49351255f3578fc3e2cbc78537b3c105bd0ddc2dce6`  
		Last Modified: Wed, 16 Sep 2026 04:35:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8e4360a67b07c28a81af7743691b9f671a033e7d09903e9c0f1007fe2fb7813d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482b2e827a2b9a66e5b9df15b4bb8868938c79e922dd4dda5f644636c30921a0`

```dockerfile
```

-	Layers:
	-	`sha256:e925bf6c349eb2f38c8903f5197b50d04e0781032d9993883d063a31cb619a0e`  
		Last Modified: Wed, 16 Sep 2026 04:35:02 GMT  
		Size: 4.3 MB (4289255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2a7c5e998293ef3af9e7c478566d7963655dada9bcc6aac9ca17a44ddfe8960`  
		Last Modified: Wed, 16 Sep 2026 04:35:01 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d79cbdf69adfb8858941e10611c757da66916d235ab8cbd536f98c1c97c5f7a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217503750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa184ce21a26e2573011c75d1d4df7743cee7c9f1bfa314887f0217fc20c748`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:34:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:02 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:34:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:34:02 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:35:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:35:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:35:13 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:35:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:35:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:35:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:35:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2e493db123ae3e1063ef6b4fa2da5315eeaeba573697fb429f25ac8f4104d6`  
		Last Modified: Wed, 16 Sep 2026 04:35:36 GMT  
		Size: 144.6 MB (144647465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25758eac4f5ba8fe9da4beab282a64277c2c6caec0217ebeffb6468989b80a1d`  
		Last Modified: Wed, 16 Sep 2026 04:35:33 GMT  
		Size: 20.0 MB (19956996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109852c51e1e19c736d525ca68ea53266091de8381bd1c7edf02453455f1c728`  
		Last Modified: Wed, 16 Sep 2026 04:35:33 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c947f31f1a8320dbe158b55f316562714723a2dfb28672c82a96498e417e1e54`  
		Last Modified: Wed, 16 Sep 2026 04:35:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:961a1fd9dd63710b255c0a0e325e0c758b102f1994cbe3d8830c4191d687eed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5468a6b77fd40e32f68489f86f7e040dfa4f4ee6aef74aa0f0aadd7bc878d62`

```dockerfile
```

-	Layers:
	-	`sha256:a97f5126282210fc5d26670d0f23bb2e7f991855a8286da8c293b3056c8f94d3`  
		Last Modified: Wed, 16 Sep 2026 04:35:33 GMT  
		Size: 4.3 MB (4288870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea6a3346a0940ac4b32a17098a8ce543b04b6a51b711ddb4d56ca48236c402d1`  
		Last Modified: Wed, 16 Sep 2026 04:35:32 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

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

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

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
