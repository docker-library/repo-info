## `erlang:27-slim`

```console
$ docker pull erlang@sha256:4a0d0fbd51ccb9a2a343408e04cf2d5823369dab37842a94c106fc055273daf9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `erlang:27-slim` - linux; amd64

```console
$ docker pull erlang@sha256:2ddb109935e9acf68212443cb87473cb2a24a940da3803cce352d5dc5fc5c9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124694320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8565d146154defe45457f2443c69e08729c55308957efc504bfccad75d740045`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 19:12:36 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:12:36 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 22 Sep 2026 19:12:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:12:36 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4a64ede840f13d35cb6e477962af3400be1c3d36892bc3917222e41eee1e87`  
		Last Modified: Tue, 22 Sep 2026 19:12:50 GMT  
		Size: 76.2 MB (76190880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:e1b35488b84d70394d9e252f6787f0cfea793a1b7e1ee8b16fb2fbaf1dbe0f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c7b0880846d78f9b84110477e753fa5282a235cf205a8a1233d10e001c1494`

```dockerfile
```

-	Layers:
	-	`sha256:622774038498f06336ddf7113da8c461f3fcd5bff601235954bbf21072fcfde4`  
		Last Modified: Tue, 22 Sep 2026 19:12:48 GMT  
		Size: 3.8 MB (3824940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8aeb483869a1f69b37fef37af86b07b016cadf4bec5b2c5836eae7b57431925`  
		Last Modified: Tue, 22 Sep 2026 19:12:47 GMT  
		Size: 13.6 KB (13639 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:7c3d327b36596a4e899b0e050bbdf6319fac56451379fc591b045866775bf6f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109491368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256eb17649b75264581d776ebcdb5527611b019587edb098868570326511dc36`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:53:42 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:53:42 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 22 Sep 2026 18:53:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:53:42 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2dbbb740748386aa41bd6bbfa1a7cff623f689c6f5256866a5c87ebb2c3b212`  
		Last Modified: Tue, 22 Sep 2026 18:53:55 GMT  
		Size: 65.3 MB (65289159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:a1cbc7dd674edb8be3cc1de3404bef59cb4bf936402f482145c63549c50cc90b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a0dde11ea852f17a970383171dec467592d852a3d5abe8229c3f0764342cd0`

```dockerfile
```

-	Layers:
	-	`sha256:6a93e121b77aaed54ae3644bbdcaa52f560c622fc0a299e794d78a5a7db466fc`  
		Last Modified: Tue, 22 Sep 2026 18:53:53 GMT  
		Size: 3.8 MB (3827173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b5c35913caa85e91996ecd329fa11e671479f450bb3bebc9493ebdfd0ee7117`  
		Last Modified: Tue, 22 Sep 2026 18:53:53 GMT  
		Size: 13.7 KB (13719 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:b1dd9da87287d97da7712c55f34069ab0ea8835bd931b71232f933bacd3db0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122309477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fde78da12bbb86bdc781353853074341a4e75641504e2961d0db225169296a`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 19:53:51 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:53:51 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 22 Sep 2026 19:53:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:53:51 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c97cd5e8388458c84863a56b724c37e70e589816921ca5c27255a189e299fda`  
		Last Modified: Tue, 22 Sep 2026 19:54:07 GMT  
		Size: 73.9 MB (73919567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:e97c10113b576f6d6256a67899502c96047cc47ba65c4ad457f10d2f6054e74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c39a1847991d3280032234dbf6329b898e05366345794ed711e4aba7e835f8`

```dockerfile
```

-	Layers:
	-	`sha256:bbbf39f0d1a926ae2fdf7cbfacccac3a45b18e89e879f63bd3d5e79bdd2b1c44`  
		Last Modified: Tue, 22 Sep 2026 19:54:05 GMT  
		Size: 3.8 MB (3825201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb3340069db3c4160965ff51fa7065e674ef51cfec40a36212c997b46f56d8d6`  
		Last Modified: Tue, 22 Sep 2026 19:54:05 GMT  
		Size: 13.7 KB (13742 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; 386

```console
$ docker pull erlang@sha256:7fd626bbbe74b6a915d0d3386289f32942d25f642c148047fbfeeda303413823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115838665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96b54eca2e644ca2fe70b28230c37047289b9b78565987c0b92ce60ba5eb724`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:53:34 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:53:34 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 22 Sep 2026 18:53:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:53:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedef0bd8aab366aa49c0b6f146e603998463c07ab055023937fd5df486b9eea`  
		Last Modified: Tue, 22 Sep 2026 18:53:48 GMT  
		Size: 66.3 MB (66347261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:b44ce47bd91fe6b29a42ea4251ecc6f5a8104daa8f74a883c1d420758e573523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c436fc40db3e3a437878d6ff4917e10422cfec0ddbabbbac62dab35f16d15286`

```dockerfile
```

-	Layers:
	-	`sha256:c6192f43e04d73360f1d8bbd9667498b565bbaa50b1a47112540437ba3728015`  
		Last Modified: Tue, 22 Sep 2026 18:53:47 GMT  
		Size: 3.8 MB (3822101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c96462414314b14091dc25ab4e2362de9c7ed58572314ff0d988cb9c26a68022`  
		Last Modified: Tue, 22 Sep 2026 18:53:46 GMT  
		Size: 13.6 KB (13607 bytes)  
		MIME: application/vnd.in-toto+json
