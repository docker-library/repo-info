## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:6a9f240172ae97f6678ab1666086d830780ed1c15b1e9a179be5921518d5da15
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
$ docker pull clojure@sha256:2ddec697cbb1f8943139d7bd2457dad2c76ce2a7e6cd1ae2f69d32e478bfcef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218990707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622ddf49fc1dea7028e09427e3ce848a3ecf46d1f6437ceeaeeb3ef916f09301`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:20:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:55 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:20:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:20:55 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:22:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:22:01 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:22:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:22:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fe2bf61cf326f6babbe8b13957f437cba4e09e1d2e62d01b04056cc564190`  
		Last Modified: Fri, 25 Sep 2026 23:22:23 GMT  
		Size: 145.8 MB (145824875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb37a02efe891e673f36ce7788300adecf83aa1c7a41ab89b2a5e7a495ce1e6d`  
		Last Modified: Fri, 25 Sep 2026 23:22:20 GMT  
		Size: 20.1 MB (20146753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e4741aeb727ec2dea1339bd5166eb37bd11b9e0d2287d332d9744f19f5de6f`  
		Last Modified: Fri, 25 Sep 2026 23:22:20 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fb76279e14d7b53e73034315ae29d85b867d1dac4249d3c22aaa90197f388b`  
		Last Modified: Fri, 25 Sep 2026 23:22:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a73d53a69abb6163dabc8f5dad91d6f5117a9542c405c2d3d971eac9a9c22e9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22f1f3a7ecab9b52d29d9c53e615190ecd891b0d0205e0fb4cfde2b708163f5`

```dockerfile
```

-	Layers:
	-	`sha256:36852ab3f224d69b326a79feff0550909dfef1325de6687318d9086a00993f10`  
		Last Modified: Fri, 25 Sep 2026 23:22:20 GMT  
		Size: 4.3 MB (4289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e22a655c48c717c4fbecd32b64a61d89674a0eabbc003d427ffda7c05dcc35b`  
		Last Modified: Fri, 25 Sep 2026 23:22:19 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e42c1abcdc42989ddc76d5db5c8d4e0599483fa5310b83550a097354e34449c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217521008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d22cd5203281cac4d3fbdf59222fd4d8f3baf6a5b46daad18e4f3db0d09058`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:18:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:18:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:18:28 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:19:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:19:37 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:19:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:19:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:19:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:19:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dde861d2deb8903f49791b55949c3731e3a62cbd7990e4dbc1dd10d7c6ee83`  
		Last Modified: Fri, 25 Sep 2026 23:20:00 GMT  
		Size: 144.6 MB (144648238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f9e3e3dc9d474011a0fc5947bdc848193304b532d52aba4845774155a8ff666`  
		Last Modified: Fri, 25 Sep 2026 23:19:57 GMT  
		Size: 20.0 MB (19967224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ef3913172b4aecd23848ed182a114dc6304aa910ec0a7f734a8d73e590f77e`  
		Last Modified: Fri, 25 Sep 2026 23:19:57 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed3b6d3d33a979c91378e88c7f4c3b935421e350469c79bf1f7c63f8ca85330`  
		Last Modified: Fri, 25 Sep 2026 23:19:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d78897e77288bae5c66d05a9009627278f39af4d7a0e6e89b042dd7ba2c2931d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c996825b86f916613837fb40b92a5983dbf0cb7c55144298996064968f1a66d`

```dockerfile
```

-	Layers:
	-	`sha256:530fb837bba40ffaa05353bff81c0735ee30af09b6b1450f3984cbdd6e97c083`  
		Last Modified: Fri, 25 Sep 2026 23:19:57 GMT  
		Size: 4.3 MB (4288914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c6f11d2cb216f2d3471acda3b4725da58ecacbf324042960e360a1586d122db`  
		Last Modified: Fri, 25 Sep 2026 23:19:56 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:8bc3bdf7db821537918eef4ee71f1ab3d59683dbc618c8007938f4e64a218948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222887608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69e69d1f938ac711dde4f313e8257ff3fe8a2098c703ed054d422b02af0d9c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:50:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:50:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:50:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:50:38 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:50:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:50:38 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:53:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:53:33 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:53:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:53:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 07:53:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 07:53:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f69fd3fc29be41a5a525ca0c3eb7d63a7aca936ad5899d2128fbdb7e32602b`  
		Last Modified: Sat, 19 Sep 2026 07:54:14 GMT  
		Size: 145.7 MB (145674296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e12fe2f848c7bac089dc4c7f6ff3766e07a1fa9889a2724bc81c374b69114`  
		Last Modified: Sat, 19 Sep 2026 07:54:11 GMT  
		Size: 20.3 MB (20348345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ea45c468567364f611138c08a456cea3c2b6aa084a7b8ac911a1258aed7f5c`  
		Last Modified: Sat, 19 Sep 2026 07:54:10 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951ee56ca40dd7a269381484da81a066b4ef2f68fdc41fc2cbe856ac4db9ae04`  
		Last Modified: Sat, 19 Sep 2026 07:54:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f5b8c05702c4f67c3e00a456a6747a697d1b6bc2fb15a5083fecbcd1e74a03bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37ef928ac3843b4643c6e04e563ca4e4f4e98c24db59c3d3a1717aff2486b82`

```dockerfile
```

-	Layers:
	-	`sha256:280b728cdc8b61b2d751fe79ff2b69d8d831bd59d5ebb56cd2110236fc862eb4`  
		Last Modified: Sat, 19 Sep 2026 07:54:11 GMT  
		Size: 4.3 MB (4291152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67e2d7e68cc25aa8b1f1985a5f123147f916fe4c9c5797a91f307049c06821dd`  
		Last Modified: Sat, 19 Sep 2026 07:54:10 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json
