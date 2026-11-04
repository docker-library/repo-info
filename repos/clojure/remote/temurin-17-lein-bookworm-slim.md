## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:6fe37f2372ade009486b867e31fadb406d463486bed7ef27f3cdec5bbf71ae69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bcb4fd83999c90bcdb50f6d60ac1189ef54284fcdf4902429e307330ba113381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196921427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b717dbbb2a0c0fa5898a1475f8ac8ff87d8aaab24c1542877ea086f0bd1a04c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:58 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:17:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:17:58 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:19:22 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:19:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:19:22 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:19:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:19:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:19:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:19:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38253fd53a568b1ac684d5db31855810ab58bfaeb5ce9ebd07ac81a123afcee1`  
		Last Modified: Tue, 03 Nov 2026 22:19:42 GMT  
		Size: 146.1 MB (146086181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4d4e0043108e52830345ff37a0878d748669829175a342ad59114e82a2ea28`  
		Last Modified: Tue, 03 Nov 2026 22:19:39 GMT  
		Size: 18.1 MB (18072188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6fa1e2d694e9c9d776448adf2e9010227db5dc73424cd2ad95220b4913bcebd`  
		Last Modified: Tue, 03 Nov 2026 22:19:39 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0019ff971c4ba378c24a3ffb55b564a6ba035463b54065c41ec5d586ae574b9b`  
		Last Modified: Tue, 03 Nov 2026 22:19:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:393a6c5c0f038e1cc2db8ff5a9226e4c6e4612c4bad7536e41bddc02400deb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1b09a1b2c2adf06a06073e7604833c36b5a2b8acf2fd8e4f50f1b5603089e8`

```dockerfile
```

-	Layers:
	-	`sha256:cff8c950a9e5c08de85108f10340b5ccbb916fda9b1733a14b5658b7e6bfa8e2`  
		Last Modified: Tue, 03 Nov 2026 22:19:39 GMT  
		Size: 2.7 MB (2736315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fb649ae41234f3f25c51e6afa11079172cd8ca322cb34d6c00f1333fe1a9618`  
		Last Modified: Tue, 03 Nov 2026 22:19:38 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:47c6586219fbc1944c42a7423411b2d263d6fc07a9d381d2c9ad2b66c526b997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195527505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca64a4f25d2281d57094faebf805c40b1e4d34d1b43c51cf3ca9a21f129df7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:17:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:17:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:17:27 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:18:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:18:50 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:18:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:18:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6829c434c2f010d7d787db5cfee203967d1140d8ba9166897037a07bf7634b9e`  
		Last Modified: Tue, 03 Nov 2026 22:19:11 GMT  
		Size: 145.0 MB (144957184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb05dfa16b30cd085665fa45fb760458ba54e3837af49b454ef424318523f37`  
		Last Modified: Tue, 03 Nov 2026 22:19:09 GMT  
		Size: 17.9 MB (17916725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff48c525c411fff9b2ec8bd6519de44ef532fe2743732b9fd4afdda96a5c28c`  
		Last Modified: Tue, 03 Nov 2026 22:19:08 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0425a83a4bfd854b6a8cf29956d160eac3f2f7411b19d69e778319e3eef265`  
		Last Modified: Tue, 03 Nov 2026 22:19:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:318e4d45534de4ab44bf14a7bde829456f05fd42d3898e020bde8394fa5169da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097a8d9da12c0245bf14713281547afedc30f8dec0f3aa43d15fdeece927c724`

```dockerfile
```

-	Layers:
	-	`sha256:3bc25e99fa47fac9d99b3b5d4925c76eb5c3baea72b0c7c8a548a199523875c6`  
		Last Modified: Tue, 03 Nov 2026 22:19:08 GMT  
		Size: 2.7 MB (2735930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31283f5a31e16070d0a662adba4d0268f7cc561784365a27fc872f692a1ea122`  
		Last Modified: Tue, 03 Nov 2026 22:19:08 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e1d05f214421ffd341d602ae603ac64e67ba1ffe4f1f656817f22098b1e4105a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199748471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5752750f80f0d378220f84dcdad314739d3829d6f10ea9136048b94c6ba3c259`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:33:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:33:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:33:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:33:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:33:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:33:32 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:36:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:36:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:36:45 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:36:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:36:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:36:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:36:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b0ef70b2874f7493a9488f8c19903ddf56212078c26b3694e1aaa3cf5a1404`  
		Last Modified: Tue, 03 Nov 2026 22:37:38 GMT  
		Size: 144.9 MB (144860490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e320ec6fd5ce45b2e10e8a7e21660db8a2cf32bedaf3ea6d31ce6e1afa83ed41`  
		Last Modified: Tue, 03 Nov 2026 22:37:35 GMT  
		Size: 18.3 MB (18279500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85442591ee62828eb820829de868f90c0e968f911c0732401bf8910ed7db3774`  
		Last Modified: Tue, 03 Nov 2026 22:37:34 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e7259d005c641068ec145300b3ef704d5456937d149c43955d08dd995708ff`  
		Last Modified: Tue, 03 Nov 2026 22:37:34 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8628e9b2ad8f9dbf1506e78b9c2425b3d92ed9a2455ae650ce091f38af94d44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57924fa555e9cbb1a982dece4e031e794a1c80867db753af757b288c1bf5444f`

```dockerfile
```

-	Layers:
	-	`sha256:aad4d4cc967788a6990ee481668b3681d45ae043077cf23a91e3ee68e244e52a`  
		Last Modified: Tue, 03 Nov 2026 22:37:35 GMT  
		Size: 2.7 MB (2736902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00cd43570d0505b7a7516d956397d5bc992b3efcdd841d6f73aed835f89859f9`  
		Last Modified: Tue, 03 Nov 2026 22:37:34 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
