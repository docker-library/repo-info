## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:982c51873a67c5c28c47aee8db2f7f5d1981287e4cfc96d8761ac262d0226ef8
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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4bc543ece5fe1e979f8203bd77e5c94121c3b0f4cbc5e77509767b9bda9e282a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196862860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d421f1d111a2b4034b7f2e691e69d6aed9322acf832f6a84d0bcb2f29479ea03`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:14:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:14:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:14:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:14:53 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:14:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:14:53 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:16:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:16:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:16:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:16:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:16:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:16:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:16:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d23100c6a828d7a79b7c8c80da38814829618d640a55825cf00d685a81847f`  
		Last Modified: Fri, 21 Aug 2026 19:16:30 GMT  
		Size: 145.8 MB (145822691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb2b479595a06629ae65867c36e4e4694bf5b10f55b6036cf329541240e1cd1`  
		Last Modified: Fri, 21 Aug 2026 19:16:27 GMT  
		Size: 16.7 MB (16743792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc3bebff223ae6a574bbee5485fcc7fb1be129f455754c54b5e9d2a7b03490f`  
		Last Modified: Fri, 21 Aug 2026 19:16:27 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660e79ad83a7bd80f01e3dc54e6a9292780e3be0f9cb12e1503915df8d34835f`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fad67ccdb92a260ffc4ca210a6e215222efda7eebc597b324c4fa9e1cee4f5ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb44cb9a87f76e71afb67a24a73ccef1357cb00fb12476168c61be88317be55d`

```dockerfile
```

-	Layers:
	-	`sha256:cc745f6f429655e4a9433e8d3e4d2ac32a7b82145c72be0f58151c00179645bb`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 2.4 MB (2367115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c961739a1a2c8b18e3b9b92c74e917d1e3ac03c445736b0908f081234157c75`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6f282b161cf0ba304b04ae51b6057516f4e888fc8e87de64aadf75ba32155b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (196018105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe7674f031cdc4371ed92abab796c12c10014d610534ba6a3781d49683bfb09`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:03:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:03:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:03:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:03:53 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:03:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:03:53 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:05:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:05:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:05:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:05:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:05:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:05:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:05:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9593c7b16bf5b8a0c07b71bd3dff1d710d6c0493537bf2fe708739f751bc6e56`  
		Last Modified: Fri, 21 Aug 2026 19:05:30 GMT  
		Size: 144.6 MB (144647557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde1453ac10dc3acf11996bdd01387f9bc6c253f5dd9d9dfce130deb6316898d`  
		Last Modified: Fri, 21 Aug 2026 19:05:27 GMT  
		Size: 16.7 MB (16711307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354b7b9355ed4ee1bf7abd68e54821012b896494066cebb6416416531d80695e`  
		Last Modified: Fri, 21 Aug 2026 19:05:26 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c08c27528ec9664222e5ae0656269c2648a1d68f9b9f06f1e5f1b988b245d1`  
		Last Modified: Fri, 21 Aug 2026 19:05:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7ea9b7cd5221480fadc762d8829c95f3b3f10f39a16405c1de7cce386d8486aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e62a3dd7e5d09c8528543eeea9395ca84287871a564def70ea5d46d7a572643`

```dockerfile
```

-	Layers:
	-	`sha256:ce142c6a0ea0e3245e8edbefb4ceedc40f3c8e022ddf05eaed77056c90e10fd5`  
		Last Modified: Fri, 21 Aug 2026 19:05:27 GMT  
		Size: 2.4 MB (2366725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:314d0d9619f81626615d2a892db81cc5e423265b29591c0b7a49184d67a7be47`  
		Last Modified: Fri, 21 Aug 2026 19:05:26 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a164f64829a571526bfc894ece701a83309b978f34b3d5218c66f91cdf96d511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200665428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b009c09f4f0c03842c1b238b27ef77743fa7dcc4b0627db1b3d8cdd8366952`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:10:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:10:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:10:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:10:51 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:10:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:10:51 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:13:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:13:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:13:46 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:13:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:13:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:13:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:13:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4812eed76f046ddff5f5bf2b62f636d086cad57871ef4e1dffa17310290708e`  
		Last Modified: Thu, 20 Aug 2026 01:14:28 GMT  
		Size: 145.8 MB (145766231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05854a675a15a81209c2e71d9086afbff2065be730db5a8db6e943f3cf67f9`  
		Last Modified: Thu, 20 Aug 2026 01:14:25 GMT  
		Size: 16.8 MB (16782228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d86f362505f3dbd992c756d26b0352db49cffa71a7609b2a5b784b0bd62773`  
		Last Modified: Thu, 20 Aug 2026 01:14:25 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06bf9e49083722e89108e03bf3ca073919088093df2208b4e98b12caf18e274e`  
		Last Modified: Thu, 20 Aug 2026 01:14:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5b6dcacd9e5b109b187552ae1638feeb9e37b2820d5c800d3d3bd6aad9ee4574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96487cc59e8ffcd1f9969c68cb2c300890224c53841179edd15b9a902ba644e0`

```dockerfile
```

-	Layers:
	-	`sha256:42d9f1d76984f0a1b3d2fb035317ecbab37e15b6cfa3a26db5ff13cb14e71083`  
		Last Modified: Thu, 20 Aug 2026 01:14:25 GMT  
		Size: 2.4 MB (2368097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab86bc171ccae8b231a4ece48a94db10a1790eeba33d344345f064ae0227c7c`  
		Last Modified: Thu, 20 Aug 2026 01:14:24 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:c779a4c8984bb14a69324e88b08a2da1c1feeadcb8fa474cad0c48a998698abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187013204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e07a6fa785415b8dc1545960eda294fb3975862c2df5c6466075f9f6a294aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:54:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:54:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:54:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:54:57 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 18:54:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 18:54:57 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 18:56:06 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 18:56:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 18:56:06 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 18:56:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 18:56:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 18:56:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 18:56:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b4afabc7fb9ce47f24efae752ea6f8c8834510b48b9b82865583be7aa9155b`  
		Last Modified: Fri, 21 Aug 2026 18:56:32 GMT  
		Size: 135.9 MB (135871078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc8311df11bd53509ada16c899bb4d5e5fdc9fa0d62325e734904bc665f0fd5`  
		Last Modified: Fri, 21 Aug 2026 18:56:29 GMT  
		Size: 16.8 MB (16779912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3b9272d3a9e20cf46734983587d22a9e191aaaefad1bdad6397b8bbee98b86`  
		Last Modified: Fri, 21 Aug 2026 18:56:29 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99824ce01bde65dc53a0148befbdc223f53de70fac1c7941ab183e2b5e8f6c08`  
		Last Modified: Fri, 21 Aug 2026 18:56:29 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:37a61b9895e718769509c95455fa12e51c6f31b1484f34c1978d305cfcedbd54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70687701210ee0249e1dbf4a07909af88a42e4fb3254e59103ff235fa5d46b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9f88eca391ad81bc0da9bc65350850526eb412d1e4c6f7b3c2387976b36bda38`  
		Last Modified: Fri, 21 Aug 2026 18:56:29 GMT  
		Size: 2.4 MB (2363542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:529a655d3715084833aca058ef375a01a9c34631bd3398e401a2ec55e0483aee`  
		Last Modified: Fri, 21 Aug 2026 18:56:29 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
