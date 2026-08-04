## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:fc1fb906adffce06965534e9fabf14f0920ba21a06577e3c4db59c439af36b96
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

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:09035748f8204d0257f1f54f7d02497604344bf341dbf0dfdfb1a8d882456201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218605266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9f0b04a175001dfb617ffe96e3e0ecd8ba9fcf27d30b352abcb42b63714f1b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:47:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:38 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:38 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:47 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:48 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f679dd2a6c566ecef4513eec2dabd64f1efd71d0e31d9ee035799a282eb803`  
		Last Modified: Tue, 04 Aug 2026 02:49:08 GMT  
		Size: 145.9 MB (145886278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df3fb8172d3c0a8fc00e619946e2213673e1d3b9ecd675e67fcee13219169cf`  
		Last Modified: Tue, 04 Aug 2026 02:49:05 GMT  
		Size: 18.9 MB (18891207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935eed37cf9afaaa3486a46e72aca645bda0c1d302add63870db31d0930d92df`  
		Last Modified: Tue, 04 Aug 2026 02:49:05 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f1742edbd7f96d0de80906e195d036c155ddbd0525cccd5c5881f3b1ede6e8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5227b59ff9ec2788ae779f51c94493e026afecc837fc6de24cbcd88c1d74cb03`

```dockerfile
```

-	Layers:
	-	`sha256:390abc9b8e9d5c954f749983e3606e7a7388f3f50126216183b23cddf02c1ff5`  
		Last Modified: Tue, 04 Aug 2026 02:49:05 GMT  
		Size: 3.8 MB (3837372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c6f1b490e2cf09d91c859848cdda02a35554140f035df46b41ccbecbf9c4d7e`  
		Last Modified: Tue, 04 Aug 2026 02:49:04 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:91bb76b1b24596037d92f40ce04510051bde6f61297978760c0e7415a9354097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215611285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1230c1c7b20526614427c490c4bbb6ca632e738b6b2d365fbd7bb8a5880d0c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:47:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:50 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:50 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:06 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:08 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a35471264b08cc2839c7a6c6a02ba4e5b2027ac26698313d3638bc10143186`  
		Last Modified: Tue, 04 Aug 2026 02:49:29 GMT  
		Size: 142.6 MB (142582249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b97a359270aaf8bb56e96eb38f1aff2310f2ddd5e269e255410e01bff059b48`  
		Last Modified: Tue, 04 Aug 2026 02:49:26 GMT  
		Size: 18.8 MB (18839618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22260c8ed49c75a82f5245716121d6f3b9c5452b91afb43499b0626b2ae2b6ab`  
		Last Modified: Tue, 04 Aug 2026 02:49:26 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c2b48e87df4dcd377f515771cae24163db0575cc53613534dd6ccf79a4f55a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a160220f44ccd4daa2f1bd6b00963979d834b1d1e6f6015e6c22236cc80e09ef`

```dockerfile
```

-	Layers:
	-	`sha256:03a33dec5192be00a025c2117d8748339c65d2a224302e14355805fbe8ae7a60`  
		Last Modified: Tue, 04 Aug 2026 02:49:26 GMT  
		Size: 3.8 MB (3838230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af2ddf73fe84b54f8a462a4075630f168a013159e451511fa6d9f6ec91a920d`  
		Last Modified: Tue, 04 Aug 2026 02:49:25 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1895ba4f38b3ec91d863a723e8d5e14d0293fe25d325646ef1d2e561daa2a3c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209695652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a8e9c0756dabbd14d30bcad0134fb744e0f1972fbda53dbfbcd3cad77ca6a8`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 04:58:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:58:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:58:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:58:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 04:58:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 04:58:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:01:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:01:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:01:36 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:01:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:01:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93730265af21325f754e83e8547865c3c756bd4c967fa218e90a090a099b51be`  
		Last Modified: Tue, 04 Aug 2026 05:02:10 GMT  
		Size: 133.1 MB (133109682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbae340565396c90fa4b96aa46c804f165fae874512fe246561f745e19633065`  
		Last Modified: Tue, 04 Aug 2026 05:02:10 GMT  
		Size: 18.9 MB (18936740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849bba857da725abbcbea02ca3db3d4b80c143d2aa228ae9377cfbb253942986`  
		Last Modified: Tue, 04 Aug 2026 05:02:10 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a6c72db97e860c27538a0d8aa21486921c160a91fb5e7397b6228d19b7340406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a5b6aa426d3d3d872eb7a68f34fc1e0a6f170734d8e78214d0ff07461575ed`

```dockerfile
```

-	Layers:
	-	`sha256:7ed5354c19d6cb29a4c931ce4e03075b21a03d5fb5ee5d91e0af118845451e40`  
		Last Modified: Tue, 04 Aug 2026 05:02:10 GMT  
		Size: 3.8 MB (3837757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9569d9b40b9fdebf99ad96dbed7796f370bc5e414d2738351e3cba9c6458f51`  
		Last Modified: Tue, 04 Aug 2026 05:02:09 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:d057c35506c681c2f733acb9098275a728794ef976f59b652e517ad66aa0f53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199471580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d972f158e3015cabc86a2ee4113ee1351bb69ebfd4c5ff5e78c89fbee33c081`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:50:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:50:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:50:15 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:51:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:51:47 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:51:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:51:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73629417056681a3f1d0d70034e895694dd8530140c9a99539efcfc2ecf6423d`  
		Last Modified: Tue, 04 Aug 2026 02:52:14 GMT  
		Size: 126.7 MB (126652393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cbcac8764161baacc164e7a705e014e534d221091eb1fd0f0a1ce93ec70536`  
		Last Modified: Tue, 04 Aug 2026 02:52:15 GMT  
		Size: 18.9 MB (18922223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93d03512207f42979e7ce86479b0159f33a55e5fa1aaec038b1d41ef4380b33`  
		Last Modified: Tue, 04 Aug 2026 02:52:15 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:450164094cb6ca9f2d3ccac2e10242781dc986cd3e40da99959496220127c522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3849537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef31decffd4b15454fb4439ed9f8632e1be8d6b56a551a805bee6bfe27569888`

```dockerfile
```

-	Layers:
	-	`sha256:c7a957f5f7441aa20a6cf8861472b00be187d8af540592ed67b791a287605905`  
		Last Modified: Tue, 04 Aug 2026 02:52:15 GMT  
		Size: 3.8 MB (3833803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d7a9f75db87292e00d830ed91e5ccd103a9d2b6a8ed475b7389625cfc9348de`  
		Last Modified: Tue, 04 Aug 2026 02:52:14 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json
