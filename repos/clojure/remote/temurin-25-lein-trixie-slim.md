## `clojure:temurin-25-lein-trixie-slim`

```console
$ docker pull clojure@sha256:e96901ccf9e3fb095053af8863e3e073737b5b2651199f904e166363966aa795
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:98e5f2ceb2c7a610c3bc9c1c2368cfc410efdee66832bad8db5bbc5b69cf8133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143719150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3afbe5cf39ced42704f4320ea96fd842b818d6f92aca64661af79feedf21248`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:24:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:19 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:24:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:24:19 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:25:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:25:37 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:25:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:25:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bd8c25bf2762c3c084af07d1fece87d328854d9981ca33f031954ab01945f7`  
		Last Modified: Fri, 25 Sep 2026 23:25:58 GMT  
		Size: 92.6 MB (92618039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce2040a1674e7ebe756fcb098c62e8b950822b7e4cd150e053cb359f37c7056`  
		Last Modified: Fri, 25 Sep 2026 23:25:57 GMT  
		Size: 16.8 MB (16755061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4217f31e9fa7c26d8420a8c2a888024748a8839988515c6fc97547833171303a`  
		Last Modified: Fri, 25 Sep 2026 23:25:56 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abb8549fe5673cd2abbe4be0963533d2827126a00fda76df309c18e4522d64a`  
		Last Modified: Fri, 25 Sep 2026 23:25:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a94076c243a91a515d3cf6e72c17c1caa5bd6d2b81afe0ddb31e475f9cd4850a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9be7796d0528ecca3f27485f53d1d426bd9fbe54d3d09d31f50366d7a3edaa`

```dockerfile
```

-	Layers:
	-	`sha256:282d35ed0f692da3de3d7d2adae5fad5f8cd83a145bb268db92e1ca2f1c5c3ac`  
		Last Modified: Fri, 25 Sep 2026 23:25:56 GMT  
		Size: 2.3 MB (2341081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604c75f953a851267732090698688951b837c3924e5cd5ee34190e2e80b96d6b`  
		Last Modified: Fri, 25 Sep 2026 23:25:56 GMT  
		Size: 18.4 KB (18399 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:30fac7b9a38d3e183f359e80153839138bd2a53826c7f2ee2314e2efc82a85af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142946031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72c52b7ec0d51d4a7dd923e0be612ff239b077cd08fb98c59ebe1f8fc1d88f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:22:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:02 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:22:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:22:02 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:23:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:23:19 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:23:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:23:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cb796fa032af9587f54cd2560a7bde7c5d809547acbb3e00eaee308b417954`  
		Last Modified: Fri, 25 Sep 2026 23:23:40 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96f3445d30ebc91c05ac65211f6c9429af3cc461e7f5d2f47f57549fa8d1a57`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 16.7 MB (16711854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cd780db32d92b23dc62ce3363f47a34876aa253c2cdd668a92c602cf7486a0`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9febed04b7bd0a44fdba70eedfcf6494d86d74204105be0801a998b7062617cc`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:198a57694fd9d8f450be94832deed9606564bf3e86957b7646e5f839c8c0efc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffac5826d9f203ce02f510a2fbda8cf2be487421179efcdd768fbc8ec94af7dd`

```dockerfile
```

-	Layers:
	-	`sha256:9a78067f3e932734ba2cd9fc4ec45275a0dd6d9b2c07dd7c2f23a9dabfb6fc96`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 2.3 MB (2340712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50beacd28c01fc38a0507b0d419366da12fbbbe6736f3ed46777d9f24b8565b1`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7495509aec5acabd578bf685d2008b817b0fe0f7599def34eb56ff6657c260b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146195354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5247a55fd60bc6a77b62be1a85099f45a020155c00d8323650197e88e9f071c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:28:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:28:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:28:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:28:25 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:28:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:28:25 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:30:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:30:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:30:54 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:30:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:30:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:30:58 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:30:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a163626061f9d090892b27101085fc696e2d8227d87d635c9ee060ad079e5ae8`  
		Last Modified: Sat, 26 Sep 2026 05:31:33 GMT  
		Size: 91.3 MB (91256230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:839ac4a7407f31b912a28d1d68f2b5154da6795625313a968cd64e3349cf2cf7`  
		Last Modified: Sat, 26 Sep 2026 05:31:31 GMT  
		Size: 16.8 MB (16782244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d795e9d620686574812ffc989720d3335eda672fc236fd51b38221c705dba6b8`  
		Last Modified: Sat, 26 Sep 2026 05:31:30 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64156846fdbb1a6e6f540a095cb9c69aab095107e0dd46971732b45513eb8a13`  
		Last Modified: Sat, 26 Sep 2026 05:31:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eaeda98c56b4467e64968692906aee7bcb1dfeb9de5bd649ae9f9f9776a32a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2343841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2248b3a22ec32665b5c50b030e97b85247bff87597482c886e7d50cb29a8cc7`

```dockerfile
```

-	Layers:
	-	`sha256:a5f69fea9b6da8e5600b8070906f551484f7d24efddcd7d3a3b708a12968d025`  
		Last Modified: Sat, 26 Sep 2026 05:31:30 GMT  
		Size: 2.3 MB (2325385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a235247f5e758e454fab232e67db1b781d3746cff496f8a22fbb72893aaddb9d`  
		Last Modified: Sat, 26 Sep 2026 05:31:30 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
