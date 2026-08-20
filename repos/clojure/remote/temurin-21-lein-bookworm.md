## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:df5bc886542f9254c8d174e6d2917fd35c62d55393339608948b09cfcaa8e331
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:1d11d28653e8b89d248d70fc65ad1c40d4b2402d0a2d8fce1b7abff6ad50e0a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231303562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7996bc84261dca4eae3509211ae0dc34b610d07fef69c42a39ce321da965d80`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:45:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:26 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:45:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:45:26 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:46:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:46:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:46:37 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:46:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:46:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:46:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:46:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b0fe4f396f98b852d6e4a7c14d90845dd3d75ded05127b7c3978993fc5f7c4`  
		Last Modified: Tue, 18 Aug 2026 20:47:01 GMT  
		Size: 158.2 MB (158166947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc144736d3ce8e924e6b90d55d611f7315d76bd76f5ff3e1450cb6e2cc40795`  
		Last Modified: Tue, 18 Aug 2026 20:46:58 GMT  
		Size: 20.1 MB (20123887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bafeb68f477a0f25b13095a74988077b6ae7564caee7b13bf2e798d0bfc6089`  
		Last Modified: Tue, 18 Aug 2026 20:46:58 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bb1eeaa59224cf6aba8a0efa7e6751f2c003f5929fc6ec3b0423a4f384e032`  
		Last Modified: Tue, 18 Aug 2026 20:46:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3d5bb60aacdc427841d3691b595e22cd866e84676015fdf6d8c4f7e2e1d386f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8963dadf4f8b7afcdefa39c3b04fe007efa4d9d875651cd7b0022831d1f0b546`

```dockerfile
```

-	Layers:
	-	`sha256:8d01d0872480c8a3958b92ee49539c3df09e3557e47a81fba48dd18919e10edd`  
		Last Modified: Tue, 18 Aug 2026 20:46:58 GMT  
		Size: 4.3 MB (4291759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77e7ded3e98ce6cd0781d121b45255c623ed1014eaa57863ffd4aec4c7f965a9`  
		Last Modified: Tue, 18 Aug 2026 20:46:57 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4135343e9a16ab746dd09cb3248275fd7f1b55caba50e53423d0f52d92059497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229316252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3918060e4c165e558d2097790d1af7a4caaaf2bb5fd1214ff192146ff7d3ff9b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:45:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:56 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:45:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:45:56 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:03 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14771c0c9451466fda138b9ce9bf919007d938e41e240a7fb7bdb69b4d33d7e`  
		Last Modified: Tue, 18 Aug 2026 20:47:28 GMT  
		Size: 156.5 MB (156461266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7d426a709874cd297b6ad11383a776cc73e1cd4b4dfa83298ee026b222b2e8`  
		Last Modified: Tue, 18 Aug 2026 20:47:25 GMT  
		Size: 20.0 MB (19955977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f891bb52e89bb5e7b1cf60b987f4dfe3ec9007551fa397342017bfae89335c68`  
		Last Modified: Tue, 18 Aug 2026 20:47:24 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75027b1ac5464f671e78bcae0ca613690cdb8fa6840bff30898c90e6bf62008d`  
		Last Modified: Tue, 18 Aug 2026 20:47:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:825b6823db504571a959abeae3dc637dab614a8e19afc8ad404a84a8d9896d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4632178d257ed3f78311cb6ef6158616d0221294308752302a9b1e59a089e38`

```dockerfile
```

-	Layers:
	-	`sha256:1ebbb3a748276132e7f4c6306441b4979561ea7c57df003205489622e4a4aae9`  
		Last Modified: Tue, 18 Aug 2026 20:47:24 GMT  
		Size: 4.3 MB (4291398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7080e129d944b58875fe0cdddbec1d3784a70d588b1a0a578abda0852f746f02`  
		Last Modified: Tue, 18 Aug 2026 20:47:24 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:97e7b9c2072f6d28155a654b3e24262aadea813e822041a3b878fdc46ace66ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235548479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f5a604b24a60a991c58250f0a6164a7f0700e9ebbf3aa65f283dd770eb08a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:17:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:17:10 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:17:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:17:12 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:19:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:19:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:19:47 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:19:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:19:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:19:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:19:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0c7008fc73cda87986c45f144a1687dcded88fbaa0b8786b7366fcf3e8ce03`  
		Last Modified: Thu, 20 Aug 2026 01:20:34 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4cfe8b6a9c7ff2dd13b329ecdc05a513c6d28f8dba99910916b025a4483bbf`  
		Last Modified: Thu, 20 Aug 2026 01:20:31 GMT  
		Size: 20.3 MB (20348082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023f96f22ecbbd79e5f6dcb933e18d936c03ba227fcf493cf59c1725bc6848b0`  
		Last Modified: Thu, 20 Aug 2026 01:20:30 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142ef346e6f11c3dc288b51ab34ca041aa8fb33ae70b3273ddc3967906f61adf`  
		Last Modified: Thu, 20 Aug 2026 01:20:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:566e4b5a60c496fbcdbe07f2625a3e08f184437b0cdf9a0adc73d7672595e746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a661a7ae5cfbea1478f6b70223d9dde6d9b96c1831a84222e4f090686de458`

```dockerfile
```

-	Layers:
	-	`sha256:a3e59b7d2f8ba3a7a759cba31496999545818dafc267c9d1d576116d9cc74de4`  
		Last Modified: Thu, 20 Aug 2026 01:20:30 GMT  
		Size: 4.3 MB (4293632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0e82dc6a4134e9c9c3d4fe06e2f95538a115e716bac92d2cdc92f6010c01a0b`  
		Last Modified: Thu, 20 Aug 2026 01:20:30 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:aa4ebd343cebd7d7689a6b8930ba40bf4c22d47dac77e0e95f82bf08005de2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218831462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eefc69b1948cf206c96086178b8e9cdca0a68e1b90138a51118ca73fbe2ae3e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:56:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:56:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:57:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:57:55 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:57:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:57:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85dcfc051b008b074bbe299ec56bc68d10c2e3984c5f1bfe2d60af60ed6ea50d`  
		Last Modified: Tue, 04 Aug 2026 02:58:24 GMT  
		Size: 147.4 MB (147388364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16add03dbc7ad3a915fb8971784b949fdae243993c084b906e1c4ae78b7cdef`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 19.8 MB (19770178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58439bb24efda4a8f11d7f79546c0c1afdc82e69db24b9f08bcc238d44581b4a`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2c73ae5e6c530d760f06e2fa2d4681a9511780e7b8c82e196d93a7247791c8`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:76f7ebe3d1770ee8520c5212dd0d498dc4f506ad4a4cfa8f81d4d0b4951e6918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ffce61ae4712fb824cf61f664ff217a12f133f87b9bca59c73bf42800e124a`

```dockerfile
```

-	Layers:
	-	`sha256:6d15e7eb1cb7f7605af14840e26212afd86a5c2cd0a351bcfb207d63d6aec71e`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 4.3 MB (4278370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c1d1f3f7d0439e4710df003ed5c7f3cc4583548c1a1fd0c442b86598d460971`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json
