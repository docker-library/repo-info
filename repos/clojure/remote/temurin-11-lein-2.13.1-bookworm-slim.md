## `clojure:temurin-11-lein-2.13.1-bookworm-slim`

```console
$ docker pull clojure@sha256:cfb0555c05bdac6059ed04f2226942bc75136118d207357b3b4de948da0a8da0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.1-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:486f3173724627d5f01b2e30f6607074a86780413ea1ea8380e854e58306ffcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196758097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66350a209059933044046cf88464092abd2e4e53e4351f4787600b25415ca60e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:08:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:08:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:08:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:08:57 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:08:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:08:57 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:10:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:10:05 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:10:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:10:06 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64586a15ab3bdaec343bc63622fdc5af9d077af558b87ec537c5b9c8397f395f`  
		Last Modified: Tue, 24 Nov 2026 05:10:26 GMT  
		Size: 145.9 MB (145923068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e382cf13c42475b39d339101fd0dc0d61311fba896321c6997d14816e3f51f`  
		Last Modified: Tue, 24 Nov 2026 05:10:23 GMT  
		Size: 18.1 MB (18071859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f4a4c37505f80e61886e2ab0f10d5c577175211e7bc78c77becd07c4501076`  
		Last Modified: Tue, 24 Nov 2026 05:10:23 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.1-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:beadd3a8e1a45b22203e88f3ed04e18f59e45c4a7f45b772c23a6bc53f21e161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1f72c1efed8618489c6d73cf99a74c222e78901344b3631aa8c87d23bf1fc2`

```dockerfile
```

-	Layers:
	-	`sha256:404a70ba838bafe6e47a06c540ee60b1ffeddcc28301ca04bab88bec787ea928`  
		Last Modified: Tue, 24 Nov 2026 05:10:22 GMT  
		Size: 2.8 MB (2755833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c143fd5581614776be9769fd13d544639696a8215dcbdab6acc7504785be1ea3`  
		Last Modified: Tue, 24 Nov 2026 05:10:22 GMT  
		Size: 16.4 KB (16373 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.1-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3c1d9ea1611c55ec28a6a6c208efba0a6446c00a9eabfef270b663278d54c78d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193196256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b71f87414ec5852eec4eec072abf4dea3d00cbb7ad994ff31ef8fbf03c2074`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:16:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:16:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:16:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:16:46 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:16:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:16:46 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:17:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:17:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:17:55 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:17:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:17:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ddcb596a6899af48710379e9a682d07be64a7ce19d594e53fabf8648db8a55`  
		Last Modified: Tue, 24 Nov 2026 05:18:17 GMT  
		Size: 142.6 MB (142621117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f156c12deb5af4e6fef4dcd4dbdf5d79702e8924bde9973108ec9985abd9536`  
		Last Modified: Tue, 24 Nov 2026 05:18:14 GMT  
		Size: 17.9 MB (17915587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddbff147c875d2406e350de5b51186f4ff55fa532fd9574090fdb62134672742`  
		Last Modified: Tue, 24 Nov 2026 05:18:13 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.1-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e485b937ce09e22b6b1151ea8891d5fd8f31d439edb85a0da3ab4049dc37516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad120073e5bcfab2ddc73ae44a2a19f47660bf3c23d6da4eccfe63d35a739e58`

```dockerfile
```

-	Layers:
	-	`sha256:2dbc9a65f19106d1f6e6a91686bf4d04f46412a57d4571a406cdf748d745492c`  
		Last Modified: Tue, 24 Nov 2026 05:18:13 GMT  
		Size: 2.8 MB (2756066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea780509dc2a4da650db4b1fd715468d65cfdc0951120c578809afe9a566c9a`  
		Last Modified: Tue, 24 Nov 2026 05:18:13 GMT  
		Size: 16.5 KB (16494 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.1-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:147e63676c5a1ce089b74fe3c258b8c114c4d7c7f394cd1aa315a6d7f85ba4c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187160244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66836059bc0ec1c636aac87cc5a0f1979a91843aaeb699d13ac9f3505897471e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:24:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:24:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:24:04 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:24:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:24:04 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:26:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:26:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:26:35 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:26:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:26:39 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a3cefc77d68b0f94c482e7289033a32797159c41d47cf214856d448c631323`  
		Last Modified: Tue, 24 Nov 2026 12:27:14 GMT  
		Size: 132.3 MB (132272163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b895327ec109b8834b8c9c36fa359536efe8e1ddc26dcdad5fe922a6250f25`  
		Last Modified: Tue, 24 Nov 2026 12:27:12 GMT  
		Size: 18.3 MB (18279346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d32f0b4619f245d97fd9d0fb389d5ef759b178025b11e6fb37bd355ff5a267`  
		Last Modified: Tue, 24 Nov 2026 12:27:11 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.1-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5090650fa99a06775d6013d8768de6a7a98e725426d141fc6fcf4b4db6739331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f51e118eed27d2b7b63eccc4549a350a0d93a115e0324c37d3fb8633df70e5b`

```dockerfile
```

-	Layers:
	-	`sha256:3b5202deea2ab81a732bd037e8ddc9ab5a9d805773efd52eba4b0949259f0492`  
		Last Modified: Tue, 24 Nov 2026 12:27:11 GMT  
		Size: 2.8 MB (2755805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:caf3f6c350a8d810d22d097c45ea488f849fb4c8e9b15e54a5242e80964f060d`  
		Last Modified: Tue, 24 Nov 2026 12:27:11 GMT  
		Size: 16.4 KB (16418 bytes)  
		MIME: application/vnd.in-toto+json
