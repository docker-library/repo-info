## `clojure:latest`

```console
$ docker pull clojure@sha256:7f69e33831b151abb569ce94fc381349ec21f2d6b77d2ebc0817cc991449c6a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:4e85766f1e8247078de999e3cc7719cfac23e3cba3db4de95c4da99c65615c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237852157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcdced4f6a9ac7d5897d8d9e68faf69ede1d91ac69571e2dfb486ca0419828c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:42:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:47 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:42:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:42:47 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:43:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:43:58 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:43:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:43:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:43:59 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:44:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:44:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:44:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:44:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09e39cabf404a5536da0957df3196ecacd30912f931e6e452f05b2b2ab0c996`  
		Last Modified: Fri, 02 Oct 2026 02:44:37 GMT  
		Size: 92.6 MB (92618037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be329a053dec21340fc61f3da9ca11bee064f53996fc2961d845aa52bf9e594`  
		Last Modified: Fri, 02 Oct 2026 02:44:34 GMT  
		Size: 20.1 MB (20146855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460d43357de18006e80c2b154b0647df46538f154295e18fa114df9216c5f055`  
		Last Modified: Fri, 02 Oct 2026 02:44:34 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d451e62349ec97492109b3dd0e36a4c5764f91e8a81a1e6bb0aa31f36ba56f3`  
		Last Modified: Fri, 02 Oct 2026 02:44:37 GMT  
		Size: 72.1 MB (72067566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798367b3ee64017a9f1c00de7b4f2ee2c1f3fcf54679bd28891ffb00315af0e2`  
		Last Modified: Fri, 02 Oct 2026 02:44:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535fabc9f30647d44338157bd7480ea5c2a9851cc4bc58110ccebc13cc8379b7`  
		Last Modified: Fri, 02 Oct 2026 02:44:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:f3c11654e3d9e10f71f8090ef774716ac1ab8cda941c7c31e3a3dd596ad419a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2711602142bdb7de33dbfaf90b1dd14873b8eab3ef1939a85fc4956ba6fbf2db`

```dockerfile
```

-	Layers:
	-	`sha256:29010864ad9fd0d4d2f3d169439c72afa075ebc07676abbc96b35e463499668b`  
		Last Modified: Fri, 02 Oct 2026 02:44:34 GMT  
		Size: 7.4 MB (7441688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2375f3e5f3d0777404424f610809cc683be6267f3ed190f9a49fd07f1fdecc5a`  
		Last Modified: Fri, 02 Oct 2026 02:44:33 GMT  
		Size: 25.0 KB (24973 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cc362976c4a2195b083bbf8717f477d2aaa67257c6e98fdabf109c03d8667c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236632846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c28be3fe97648a6ae2a30e5905f7f621cf9b63724f06d6aeb81f5028a8efce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:42:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:45 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:42:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:42:45 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:43:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:43:59 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:44:01 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:44:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:44:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:44:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:44:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e15dfc620cceb6b944561b706aeaeb8a8115e0e637818409ba1a8981df84ea`  
		Last Modified: Fri, 02 Oct 2026 02:44:38 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c4ee1860565cbc38b3c4cb12018453735eebbe69d36476ebb0efe3cdae0dc79`  
		Last Modified: Fri, 02 Oct 2026 02:44:36 GMT  
		Size: 20.0 MB (19967419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9fc9ed7d2f9d8ad2d36087e295b1b4a304d2ef9bb8c5ccd7e8344da754303ae`  
		Last Modified: Fri, 02 Oct 2026 02:44:35 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:797ce84757488c0c806c5fcf80461b812868c74fcbf701a865dfe479053a86e4`  
		Last Modified: Fri, 02 Oct 2026 02:44:38 GMT  
		Size: 72.2 MB (72230369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804f7ce3ded40e4b036ab3211892fd0f8d882784782894aa27dd7f4cbb66158c`  
		Last Modified: Fri, 02 Oct 2026 02:44:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1a4f384d860c827607005f60bba43c5591e8bca7418392ddd8dd494ff29ca9`  
		Last Modified: Fri, 02 Oct 2026 02:44:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:67aa1eccdc9ec22c51a7e54c54725e47a3fa832b2ad0fd8a479dd0b4fec0de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7472523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:387ebbff9f6e1593a16b955ecfdbcdde6e7b9d332ef4a85447c3565ddc6b68d6`

```dockerfile
```

-	Layers:
	-	`sha256:d56ea9c14b10f252f477c101c17bda755e10117dce0e0157030bb47667f5cd71`  
		Last Modified: Fri, 02 Oct 2026 02:44:35 GMT  
		Size: 7.4 MB (7447424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc0098c7f15372119f4f7e5f58a60514f6089fd532299fe0dd380873e148d218`  
		Last Modified: Fri, 02 Oct 2026 02:44:34 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:4cd52d68b582fde6bb097d146948738828481a209f2bb2962289e7bb65ed68a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246154012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b95212de8d7538247458d956f7805dbd2e8a3bba60b3198ed7f2a6dd12d4595`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:39:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:39:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:39:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:39:05 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 03:39:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 03:39:06 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:41:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 03:41:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 03:41:45 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 03:41:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 03:41:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:41:52 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:42:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:42:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:42:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 03:42:27 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 03:42:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04e914040a479971a3ed1caeca790017eb916416f5fcef351c9f764d805fc2`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 91.3 MB (91256264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae09b42099793a3143d008e2fd40ddbf3493455397fe3ac79ca5e3cfa9a6e6e4`  
		Last Modified: Sat, 26 Sep 2026 03:43:13 GMT  
		Size: 20.4 MB (20358351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99d9376f75067724316363794bc1da03e8a75f4ced42d57442896eb0a7b6555`  
		Last Modified: Sat, 26 Sep 2026 03:43:11 GMT  
		Size: 4.5 MB (4515236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a65dba9ec36b460f43d3587b1a6e2fc9489667e5cd4a500f04a7babe6b9786`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 77.7 MB (77673780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321f31e1ea7811a48c2f938b21921acd154dda2a33006323d7a41a2293f973e8`  
		Last Modified: Sat, 26 Sep 2026 03:43:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c8c3718f69cea3bbe3d8159da8470030767c9cd75767eccd1233389ece4c49`  
		Last Modified: Sat, 26 Sep 2026 03:43:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:891ddc1a967a0c27fc13bfd61a6891c75da41042f71176d6941886d97b61d793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192007251194608ec189d7a089fc79936558f280ffef865100b3e179b48fb594`

```dockerfile
```

-	Layers:
	-	`sha256:fef5aa5eadc9b7cdd46d7da3661ce4051511c260ec60912ad893371645c6abcd`  
		Last Modified: Fri, 02 Oct 2026 07:33:11 GMT  
		Size: 7.4 MB (7430202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:783f6f5ef74aaafcc89659fa3cebb5acbbe486468e804f237b4c722ba29df594`  
		Last Modified: Fri, 02 Oct 2026 07:33:10 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
