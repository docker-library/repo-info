## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:f0a0fbf06dc2d52724ba0438edf22a70af51bf46456e88a44ae57cf740912f33
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

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0a8e00b0403ed25a3ab05b583e097b5fc83d7299bbcca01da776efd7d97549a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219038410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf3435b26bc1b53339aa4d03426a59df390eca7cad7b594ab565c7049fb58fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:25:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:23 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:27 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f035cfbf63db8881bcfdf40c8e0b143e373befb3311a73c36e860defea4225`  
		Last Modified: Tue, 14 Jul 2026 02:26:49 GMT  
		Size: 145.9 MB (145906288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f502ccd38cb0682957e0c3af1b591eee19a68a726f9410e0f46c718e55b57d`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 20.1 MB (20119092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80307696fe13d0bb8b6c63deb7d1e1ca4d87c9510820fcef5f22669142054e7e`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9845ce0a45fffb5308414432d688de6053af58e5e0efe03629784b20dea5a5a5`  
		Last Modified: Tue, 14 Jul 2026 02:26:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:50faeef06f44175f1c5755cd5928fa03c7049822f8025033f7f197750eb118ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d012902b5ce953c4c0b3ebdfbf5988fcdc2f63bebc827b9c4356c5b3f082148a`

```dockerfile
```

-	Layers:
	-	`sha256:65e2924e9fc400b7ef969752f77e4b73675c6807bbf48c84cee1ff5321a21ebf`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 4.3 MB (4284054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fd682e24f1727e8e04c2806f63cbd5c788a647fad03414c33cdf53a5aa733f9`  
		Last Modified: Tue, 14 Jul 2026 02:26:45 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba63ac3df4fbd1e8c69b522e7a904051b18cb3ee9c294aca4e7385b4ce3a4be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217574417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf106bf06965e5cde21bc63ca84976131b91e6e7b372f8d119a1790671387aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:16 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:23 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15013b40379417786ca64e8c1dfa2dd8746a809f2805410ab769ba7c0f58df0`  
		Last Modified: Tue, 14 Jul 2026 02:26:45 GMT  
		Size: 144.7 MB (144724295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6612aea482624322109a815e06264e6685cc6fb422cbb077e5cd76e2c54754`  
		Last Modified: Tue, 14 Jul 2026 02:26:42 GMT  
		Size: 20.0 MB (19950812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a530b2b1ad7f7fb8bf57af4379cc1aa77e9fa97b0552a9cfa0be8e5a46a95e5f`  
		Last Modified: Tue, 14 Jul 2026 02:26:42 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6570210b07a63d0709adaf9fe6ac53ec4651856fc1c9dbb9e43ab9aeb4ff61`  
		Last Modified: Tue, 14 Jul 2026 02:26:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2271412c4aaa293890cfc8f0ecb7a179c08c04cb49f2595b688fa7aefc228136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df26ea63ec3fefe9c5b9733a6da1cd88eb573a09c8bdce4c85e48c4692a6028`

```dockerfile
```

-	Layers:
	-	`sha256:29f814fe187caab142c0dd04b9d30ed0ebf83c0f89282c5040a103a9d01b5e45`  
		Last Modified: Tue, 14 Jul 2026 02:26:42 GMT  
		Size: 4.3 MB (4283669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6eed44141d87d94e223de6c1813db7856da97fdbf3e1a7b6c05cacafc5556fb`  
		Last Modified: Tue, 14 Jul 2026 02:26:41 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:503ee2f24487d5dd2d2d6abe1cb9ef99742f01e6cd8d15efc9ac36e0ad6ba686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.0 MB (222960784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14997e7be94255949e655e97da7f3a621c77e5cd2374b5d822fb9a23adafa4e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:05:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:05:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:05:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:05:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:05:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:05:31 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:07:56 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:07:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:07:56 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:07:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:07:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:07:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:07:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23318d964605b71f28c3da76366427e3b1abc150181347f2428bac212637d453`  
		Last Modified: Thu, 02 Jul 2026 07:08:38 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9019f5fdca1ff2778f529c9f73a57175689d273e2a446ec152b97a758b5072`  
		Last Modified: Thu, 02 Jul 2026 07:08:35 GMT  
		Size: 20.3 MB (20332104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f93fb0eaa43c703a0823e9abe1056ce71296904edb19c22ede9e5374771add`  
		Last Modified: Thu, 02 Jul 2026 07:08:34 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ec84cc95bd17c7f562bf65f054113dd163b96e278c0db3db1031a9dfec84ab`  
		Last Modified: Thu, 02 Jul 2026 07:08:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0fe36ed699b1d7c995587910966848a173b5b8392cb045c862e7e7bcd1ee8ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2682c60e3ff54863e5cf790891d88bef5a11b99be9f5d4009720343b7c80f94`

```dockerfile
```

-	Layers:
	-	`sha256:40b76231dfc8129ecde7acc2a50c7b1d4879e1b8bd3b4b1693d04c17b9642246`  
		Last Modified: Thu, 02 Jul 2026 07:08:34 GMT  
		Size: 4.3 MB (4285879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de2193d350c8045afc4f92d16f38f93ef6d3db0ac21abf8d485e69de94fc58cf`  
		Last Modified: Thu, 02 Jul 2026 07:08:33 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:8f06e22dfa3b863a3a0568cd44c2a301f22c3657260cc2ad3d3c029f9cb5a42b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207353622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:977c195a4add9afa7065c8a14f490db91272b1eabd3453bb68ecf3259063e136`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:27:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:27:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:27:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:27:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:27:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:27:46 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:28:56 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:28:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:28:56 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:28:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:28:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:28:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:28:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89f4c3517bae7a83d6736bfcea8ad580214d6be0e6bbee8191980dcb73dbb73`  
		Last Modified: Tue, 14 Jul 2026 04:29:24 GMT  
		Size: 135.9 MB (135910433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a9607bc046c3ceed03710f7f7524ac2025f079735d4264ce05794bd3094b89`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 19.8 MB (19770276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a3ad8d1b29e6283127af0f5548ecc83b20af0c26da8751ace6a5e5c7ebb6`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7299784a8a3aed354086945330745e5b44beb5e5d0d2371ef7ad14baea7e6ef`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b2ea03ad4a13472c44530eff419528893a05e98a3d9881f9d73e4f8d10d8d72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4293606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6c7ca9b63de51e3dc9d35d964198c5dd9f499e8b073f231132517c5e23a2d6`

```dockerfile
```

-	Layers:
	-	`sha256:045cfe07c410fd1516e3409ab5da210ac397be5af66b00a756ab38ea7135fd5b`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 4.3 MB (4275868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bc465c8cc934b43a8c0f44e04effe6f908cc4c3948b261ba04e62f5efc84347`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json
