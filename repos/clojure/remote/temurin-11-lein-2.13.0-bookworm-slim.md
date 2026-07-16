## `clojure:temurin-11-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:c03f65a8e0d356862b26458f894c478db19c49c36df57c2cdb27e2b95c68da26
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

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:38f798d521ac607c36316b14698eee0d6627189f7b3a9f5ac7b96b8645f0105b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196694706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59c062716af3e3cf6dfaccbc2a8387795a770436597746f603c0c65894122a1`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:30:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:00 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:00 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:07 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:08 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8994a895909cbdcc8ab166bec0233d11288a0f0794556d23b057d9f7881338d`  
		Last Modified: Thu, 16 Jul 2026 01:31:27 GMT  
		Size: 145.9 MB (145886182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b510426a41c97d2aa4612faaea9095d0dcdb4ff539e09b33acf2c432052fa7c6`  
		Last Modified: Thu, 16 Jul 2026 01:31:24 GMT  
		Size: 18.1 MB (18060627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdcd018ac8b75c7bb8d945e60f15ab3965041aa1636067f33f17a47b2444e8c`  
		Last Modified: Thu, 16 Jul 2026 01:31:23 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:43e2ef3e1777722237631c3ce786436cd2d8f1c5c630df68939fc2dd5fefb9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e86e1f9aa9e6728b397b93101a1ca2876a54dcf7ac117e24680328a94a1e6c2`

```dockerfile
```

-	Layers:
	-	`sha256:3ee1a5125ff6c4ea0221e4b9568da839fb9800ecf657efbda513b0ef21d1b07e`  
		Last Modified: Thu, 16 Jul 2026 01:31:23 GMT  
		Size: 2.8 MB (2751889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f48e39a28a0ce061dab5a2a4254643daef36033b85c191147b59e5de2117cb3`  
		Last Modified: Thu, 16 Jul 2026 01:31:23 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:47a104ca2eedae60bd06d5329e48e27ea684f5e34bf25939ae9124e0f3c31baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193120477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68aee23275f6de0af31fe03aa52d5a352164446e10ddd2ef6907acb96e0620cf`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:20:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:20:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:20:37 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:20:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:20:37 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:21:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:21:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:21:48 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:21:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:21:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ef75f9293be9b250909da7d3f8d9e8d49616910e55d6b1dcdb3ff0a9fa1612`  
		Last Modified: Thu, 16 Jul 2026 01:22:09 GMT  
		Size: 142.6 MB (142582178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21beff7766e1388db588a05b648bc259722f6bb8715a03ce9ad1d1714907c69`  
		Last Modified: Thu, 16 Jul 2026 01:22:06 GMT  
		Size: 17.9 MB (17905825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be28dcc9edbc89070f3feb8a50d45cba01840394af7484d9accbbfe7036e22da`  
		Last Modified: Thu, 16 Jul 2026 01:22:05 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99ab2b11ae7847c4607aa45ca33c64b3ce3e4a0a8deace11b32e18a5255baf6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dbcc948604de02c7d1064887e81f86d3b529e3304e2a647aaff4abe265393f6`

```dockerfile
```

-	Layers:
	-	`sha256:b57cf00486abaff25c554d341374feaeb6e67a166b54e8d14a9393b54a7aafe1`  
		Last Modified: Thu, 16 Jul 2026 01:22:05 GMT  
		Size: 2.8 MB (2752122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97bc320d73d45b7c915c708891adc78144279b9d273288e590dc76773fddd12c`  
		Last Modified: Thu, 16 Jul 2026 01:22:05 GMT  
		Size: 15.9 KB (15898 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bab5f376ebaf89dc195e406306eafb96a1f39a2d2c8de28c8992228a6e019c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187965677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f9634aabd39fbac630812c90947d0952d14eedd0618a252fb15e6172e45b47`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:27:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:27:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:27:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:27:30 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:27:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:27:30 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:29:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:29:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:29:57 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:30:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:30:00 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141a58abc809edaed4cdf5da982e256ab1138c5de5b0715e55e2e13c3bf07567`  
		Last Modified: Thu, 16 Jul 2026 02:30:35 GMT  
		Size: 133.1 MB (133109889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb5cb1866a117a2f636fcae2463370d2ce3e391a7fd38972be7be6111f28a85`  
		Last Modified: Thu, 16 Jul 2026 02:30:32 GMT  
		Size: 18.3 MB (18264132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc066e06c3c1753e3ee91da737fde0484ae5c95fe85a6ddc2988853b86ab670`  
		Last Modified: Thu, 16 Jul 2026 02:30:32 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e2c7ce3d8011334669cd23e8b230f91ff09c146e3b025308377cc8adaa30212c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e54a76ed5fea55a0e6d46bf6b8f8506368c5e23ef56de357544fbc47aa9dbe`

```dockerfile
```

-	Layers:
	-	`sha256:4a5231720c9ccf1a2786ee12677ee5eda0c9b4c46d43aaf46ed17beb9fdfb56f`  
		Last Modified: Thu, 16 Jul 2026 02:30:32 GMT  
		Size: 2.8 MB (2753107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:819410352a043a22ac1a9105997f7535850c3e332ca37a17304d697307b712fd`  
		Last Modified: Thu, 16 Jul 2026 02:30:31 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:729679732ea1136abf8beae37994a91904d18d189e201f700ada0cd8f6a759df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175779515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deecc1afefb447667a1afb2a37f6b9995b1b99dcc1f3ab53bf50a14d3f081024`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:41:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:41:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:41:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:41:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:42:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:42:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:42:51 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:42:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:42:53 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cf88382cc3b09d2b3c026be7265ab08e44143176bd159a5118f6f3e74eed2c`  
		Last Modified: Thu, 16 Jul 2026 01:43:18 GMT  
		Size: 126.7 MB (126651663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0beaf439e4a822221d22b8efc6c85680b49908bde31bb4c686d9fd45456de96`  
		Last Modified: Thu, 16 Jul 2026 01:43:16 GMT  
		Size: 17.7 MB (17724342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2b2cb459d36cac5b47e1d6fee6d6928ab17be9b96bb0d205fe1e335c3c37e1`  
		Last Modified: Thu, 16 Jul 2026 01:43:15 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dd97cda155fd4d96b3c7e8e3f7991170f1abc60a2587cb97a72b9d41b1411944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c66381da34586aa7e5074cc5bbc4b3568fde560412203dfbd49398aeefa5b95`

```dockerfile
```

-	Layers:
	-	`sha256:efc0ad35d9184469cce88486d834005ba1da69b3eaa37c26d051b4fb11e3ddff`  
		Last Modified: Thu, 16 Jul 2026 01:43:15 GMT  
		Size: 2.7 MB (2743707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c06ee246b5fd8220e580f07518af082f59e1ce2153a0cc2073c0b9bfc3392989`  
		Last Modified: Thu, 16 Jul 2026 01:43:15 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json
